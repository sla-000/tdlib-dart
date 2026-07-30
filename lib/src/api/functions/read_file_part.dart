// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reads a part of a file from the TDLib file cache and returns read bytes.
/// This method is intended to be used only if the application has no direct
/// access to TDLib's file system, because it is usually slower than a direct
/// read from the file
/// Returns [Data]
@immutable
class ReadFilePart extends TdFunction {
  const ReadFilePart({
    required this.fileId,
    required this.offset,
    required this.count,
  });

  /// [fileId] Identifier of the file. The file must be located in the TDLib
  /// file cache
  final int fileId;

  /// [offset] The offset from which to read the file
  final int offset;

  /// [count] Number of bytes to read. An error will be returned if there are
  /// not enough bytes available in the file from the specified position. Pass 0
  /// to read all available data from the specified position
  final int count;

  static const String constructor = 'readFilePart';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'offset': offset,
        'count': count,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReadFilePart &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.count, count));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(count)
      ]);
}
