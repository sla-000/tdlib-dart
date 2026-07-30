// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes pause state of a file in the file download list
/// Returns [Ok]
@immutable
class ToggleDownloadIsPaused extends TdFunction {
  const ToggleDownloadIsPaused({
    required this.fileId,
    required this.isPaused,
  });

  /// [fileId] Identifier of the downloaded file
  final int fileId;

  /// [isPaused] Pass true if the download is paused
  final bool isPaused;

  static const String constructor = 'toggleDownloadIsPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleDownloadIsPaused &&
          const DeepCollectionEquality().equals(other.fileId, fileId) &&
          const DeepCollectionEquality().equals(other.isPaused, isPaused));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(fileId),
        const DeepCollectionEquality().hash(isPaused)
      ]);
}
