// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The state of the file download list has changed
@immutable
class UpdateFileDownloads extends Update {
  const UpdateFileDownloads({
    required this.totalSize,
    required this.totalCount,
    required this.downloadedSize,
  });

  /// [totalSize] Total size of files in the file download list, in bytes
  final int totalSize;

  /// [totalCount] Total number of files in the file download list
  final int totalCount;

  /// [downloadedSize] Total downloaded size of files in the file download list,
  /// in bytes
  final int downloadedSize;

  static const String constructor = 'updateFileDownloads';

  static UpdateFileDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileDownloads(
      totalSize: (json['total_size'] as int?) ?? 0,
      totalCount: (json['total_count'] as int?) ?? 0,
      downloadedSize: (json['downloaded_size'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_size': totalSize,
        'total_count': totalCount,
        'downloaded_size': downloadedSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFileDownloads &&
          const DeepCollectionEquality().equals(other.totalSize, totalSize) &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality()
              .equals(other.downloadedSize, downloadedSize));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalSize),
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(downloadedSize)
      ]);
}
