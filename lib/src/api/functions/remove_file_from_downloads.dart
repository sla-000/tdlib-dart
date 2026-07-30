// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a file from the file download list
/// Returns [Ok]
@immutable
class RemoveFileFromDownloads extends TdFunction {
  const RemoveFileFromDownloads({
    required this.fileId,
    required this.deleteFromCache,
  });

  /// [fileId] Identifier of the downloaded file
  final int fileId;

  /// [deleteFromCache] Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;

  static const String constructor = 'removeFileFromDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'delete_from_cache': deleteFromCache,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveFileFromDownloads &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality()
              .equals(other.deleteFromCache, deleteFromCache));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(deleteFromCache)
      ]);
}
