// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A file download was changed. This update is sent only after file download
/// list is loaded for the first time
@immutable
class UpdateFileDownload extends Update {
  const UpdateFileDownload({
    required this.fileId,
    required this.completeDate,
    required this.isPaused,
    required this.counts,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [completeDate] Point in time (Unix timestamp) when the file downloading
  /// was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// [isPaused] True, if downloading of the file is paused
  final bool isPaused;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts counts;

  static const String constructor = 'updateFileDownload';

  static UpdateFileDownload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileDownload(
      fileId: json['file_id'] as int,
      completeDate: json['complete_date'] as int,
      isPaused: json['is_paused'] as bool,
      counts: DownloadedFileCounts.fromJson(
          json['counts'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'complete_date': completeDate,
        'is_paused': isPaused,
        'counts': counts.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFileDownload &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality()
              .equals(other.completeDate, completeDate) &&
          const DeepCollectionEquality().equals(other.isPaused, isPaused) &&
          const DeepCollectionEquality().equals(other.counts, counts));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(completeDate),
        const DeepCollectionEquality().hash(isPaused),
        const DeepCollectionEquality().hash(counts)
      ]);
}
