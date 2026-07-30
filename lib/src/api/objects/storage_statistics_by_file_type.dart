// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains the storage usage statistics for a specific file type
@immutable
class StorageStatisticsByFileType extends TdObject {
  const StorageStatisticsByFileType({
    required this.fileType,
    required this.size,
    required this.count,
  });

  /// [fileType] File type
  final FileType fileType;

  /// [size] Total size of the files, in bytes
  final int size;

  /// [count] Total number of files
  final int count;

  static const String constructor = 'storageStatisticsByFileType';

  static StorageStatisticsByFileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsByFileType(
      fileType: FileType.fromJson(json['file_type'] as Map<String, dynamic>?)!,
      size: json['size'] as int,
      count: json['count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_type': fileType.toJson(),
        'size': size,
        'count': count,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StorageStatisticsByFileType &&
          const DeepCollectionEquality().equals(other.fileType, fileType) &&
          const DeepCollectionEquality().equals(other.size, size) &&
          const DeepCollectionEquality().equals(other.count, count));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileType),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(count)
      ]);
}
