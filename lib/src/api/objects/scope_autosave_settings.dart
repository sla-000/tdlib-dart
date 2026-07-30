// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains autosave settings for an autosave settings scope
@immutable
class ScopeAutosaveSettings extends TdObject {
  const ScopeAutosaveSettings({
    required this.autosavePhotos,
    required this.autosaveVideos,
    required this.maxVideoFileSize,
  });

  /// [autosavePhotos] True, if photo autosave is enabled
  final bool autosavePhotos;

  /// [autosaveVideos] True, if video autosave is enabled
  final bool autosaveVideos;

  /// [maxVideoFileSize] The maximum size of a video file to be autosaved, in
  /// bytes; 512 KB - 4000 MB
  final int maxVideoFileSize;

  static const String constructor = 'scopeAutosaveSettings';

  static ScopeAutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ScopeAutosaveSettings(
      autosavePhotos: (json['autosave_photos'] as bool?) ?? false,
      autosaveVideos: (json['autosave_videos'] as bool?) ?? false,
      maxVideoFileSize: (json['max_video_file_size'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'autosave_photos': autosavePhotos,
        'autosave_videos': autosaveVideos,
        'max_video_file_size': maxVideoFileSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ScopeAutosaveSettings &&
          const DeepCollectionEquality()
              .equals(other.autosavePhotos, autosavePhotos) &&
          const DeepCollectionEquality()
              .equals(other.autosaveVideos, autosaveVideos) &&
          const DeepCollectionEquality()
              .equals(other.maxVideoFileSize, maxVideoFileSize));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(autosavePhotos),
        const DeepCollectionEquality().hash(autosaveVideos),
        const DeepCollectionEquality().hash(maxVideoFileSize)
      ]);
}
