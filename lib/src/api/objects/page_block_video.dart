// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video
@immutable
class PageBlockVideo extends PageBlock {
  const PageBlockVideo({
    this.video,
    this.caption,
    required this.needAutoplay,
    required this.isLooped,
    required this.hasSpoiler,
  });

  /// [video] Video file; may be null
  final Video? video;

  /// [caption] Video caption; may be null if none
  final PageBlockCaption? caption;

  /// [needAutoplay] True, if the video must be played automatically
  final bool needAutoplay;

  /// [isLooped] True, if the video must be looped
  final bool isLooped;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'pageBlockVideo';

  static PageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
      needAutoplay: json['need_autoplay'] as bool,
      isLooped: json['is_looped'] as bool,
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video?.toJson(),
        'caption': caption?.toJson(),
        'need_autoplay': needAutoplay,
        'is_looped': isLooped,
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockVideo &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.needAutoplay, needAutoplay) &&
          const DeepCollectionEquality().equals(other.isLooped, isLooped) &&
          const DeepCollectionEquality().equals(other.hasSpoiler, hasSpoiler));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(needAutoplay),
        const DeepCollectionEquality().hash(isLooped),
        const DeepCollectionEquality().hash(hasSpoiler)
      ]);
}
