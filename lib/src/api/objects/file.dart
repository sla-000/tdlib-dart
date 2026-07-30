// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a file
@immutable
class File extends TdObject {
  const File({
    required this.id,
    required this.size,
    required this.expectedSize,
    required this.local,
    required this.remote,
  });

  /// [id] Unique file identifier
  final int id;

  /// [size] File size, in bytes; 0 if unknown
  final int size;

  /// [expectedSize] Approximate file size in bytes in case the exact file size
  /// is unknown. Can be used to show download/upload progress
  final int expectedSize;

  /// [local] Information about the local copy of the file
  final LocalFile local;

  /// [remote] Information about the remote copy of the file
  final RemoteFile remote;

  static const String constructor = 'file';

  static File? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return File(
      id: (json['id'] as int?) ?? 0,
      size: (json['size'] as int?) ?? 0,
      expectedSize: (json['expected_size'] as int?) ?? 0,
      local: LocalFile.fromJson(json['local'] as Map<String, dynamic>?)!,
      remote: RemoteFile.fromJson(json['remote'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'size': size,
        'expected_size': expectedSize,
        'local': local.toJson(),
        'remote': remote.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is File &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.size, size) &&
          const DeepCollectionEquality()
              .equals(other.expectedSize, expectedSize) &&
          const DeepCollectionEquality().equals(other.local, local) &&
          const DeepCollectionEquality().equals(other.remote, remote));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(expectedSize),
        const DeepCollectionEquality().hash(local),
        const DeepCollectionEquality().hash(remote)
      ]);
}
