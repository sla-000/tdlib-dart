import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
