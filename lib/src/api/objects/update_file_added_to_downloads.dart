// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A file was added to the file download list. This update is sent only after
/// file download list is loaded for the first time
@immutable
class UpdateFileAddedToDownloads extends Update {
  const UpdateFileAddedToDownloads({
    required this.fileDownload,
    required this.counts,
  });

  /// [fileDownload] The added file download
  final FileDownload fileDownload;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts counts;

  static const String constructor = 'updateFileAddedToDownloads';

  static UpdateFileAddedToDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileAddedToDownloads(
      fileDownload: FileDownload.fromJson(
          json['file_download'] as Map<String, dynamic>?)!,
      counts: DownloadedFileCounts.fromJson(
          json['counts'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_download': fileDownload.toJson(),
        'counts': counts.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFileAddedToDownloads &&
          const DeepCollectionEquality()
              .equals(other.fileDownload, fileDownload) &&
          const DeepCollectionEquality().equals(other.counts, counts));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileDownload),
        const DeepCollectionEquality().hash(counts)
      ]);
}
