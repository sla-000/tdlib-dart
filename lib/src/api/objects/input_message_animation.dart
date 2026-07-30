// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An animation message (GIF-style).
@immutable
class InputMessageAnimation extends InputMessageContent {
  const InputMessageAnimation({
    required this.animation,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
  });

  /// [animation] The animation to be sent
  final InputAnimation animation;

  /// [caption] Animation caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// animation; otherwise, the caption must be shown below the animation; not
  /// supported in secret chats
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessageAnimation';

  static InputMessageAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageAnimation(
      animation:
          InputAnimation.fromJson(json['animation'] as Map<String, dynamic>?)!,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation.toJson(),
        'caption': caption?.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageAnimation &&
          const DeepCollectionEquality().equals(other.animation, animation) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.showCaptionAboveMedia, showCaptionAboveMedia) &&
          const DeepCollectionEquality().equals(other.hasSpoiler, hasSpoiler));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(animation),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(showCaptionAboveMedia),
        const DeepCollectionEquality().hash(hasSpoiler)
      ]);
}
