// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns file downloaded prefix size from a given offset, in bytes
/// Returns [FileDownloadedPrefixSize]
@immutable
class GetFileDownloadedPrefixSize extends TdFunction {
  const GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });

  /// [fileId] Identifier of the file
  final int fileId;

  /// [offset] Offset from which downloaded prefix size needs to be calculated
  final int offset;

  static const String constructor = 'getFileDownloadedPrefixSize';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'offset': offset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetFileDownloadedPrefixSize &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality().equals(other.offset, offset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(offset)
      ]);
}
