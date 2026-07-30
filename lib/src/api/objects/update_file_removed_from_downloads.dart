// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A file was removed from the file download list. This update is sent only
/// after file download list is loaded for the first time
@immutable
class UpdateFileRemovedFromDownloads extends Update {
  const UpdateFileRemovedFromDownloads({
    required this.fileId,
    required this.counts,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts counts;

  static const String constructor = 'updateFileRemovedFromDownloads';

  static UpdateFileRemovedFromDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileRemovedFromDownloads(
      fileId: json['file_id'] as int,
      counts: DownloadedFileCounts.fromJson(
          json['counts'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'counts': counts.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFileRemovedFromDownloads &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality().equals(other.counts, counts));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(counts)
      ]);
}
