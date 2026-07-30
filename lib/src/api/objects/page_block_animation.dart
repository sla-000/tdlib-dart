import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animation
@immutable
class PageBlockAnimation extends PageBlock {
  const PageBlockAnimation({
    this.animation,
    this.caption,
    required this.needAutoplay,
    required this.hasSpoiler,
  });

  /// [animation] Animation file; may be null
  final Animation? animation;

  /// [caption] Animation caption; may be null if none
  final PageBlockCaption? caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'pageBlockAnimation';

  static PageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnimation(
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
      needAutoplay: json['need_autoplay'] as bool,
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation?.toJson(),
        'caption': caption?.toJson(),
        'need_autoplay': needAutoplay,
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
