// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains size of downloaded prefix of a file
@immutable
class FileDownloadedPrefixSize extends TdObject {
  const FileDownloadedPrefixSize({
    required this.size,
  });

  /// [size] The prefix size, in bytes
  final int size;

  static const String constructor = 'fileDownloadedPrefixSize';

  static FileDownloadedPrefixSize? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FileDownloadedPrefixSize(
      size: json['size'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'size': size,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FileDownloadedPrefixSize &&
          const DeepCollectionEquality().equals(other.size, size));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(size)]);
}
