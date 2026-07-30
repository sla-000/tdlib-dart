import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animation
@immutable
class InputPageBlockAnimation extends InputPageBlock {
  const InputPageBlockAnimation({
    required this.animation,
    this.caption,
    required this.hasSpoiler,
  });

  /// [animation] The animation to be sent
  final InputAnimation animation;

  /// [caption] Animation caption; pass null if none
  final PageBlockCaption? caption;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'inputPageBlockAnimation';

  static InputPageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockAnimation(
      animation:
          InputAnimation.fromJson(json['animation'] as Map<String, dynamic>?)!,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation.toJson(),
        'caption': caption?.toJson(),
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
