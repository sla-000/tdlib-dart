// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An animation
@immutable
class PageBlockAnimation extends PageBlock {
  const PageBlockAnimation({
    this.animation,
    required this.caption,
    required this.needAutoplay,
  });

  /// [animation] Animation file; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;

  static const String constructor = 'pageBlockAnimation';

  static PageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnimation(
      animation: Animation.fromJson(json['animation'] as Map<String, dynamic>?),
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?)!,
      needAutoplay: (json['need_autoplay'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation?.toJson(),
        'caption': caption.toJson(),
        'need_autoplay': needAutoplay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockAnimation &&
          const DeepCollectionEquality().equals(other.animation, animation) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.needAutoplay, needAutoplay));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(animation),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(needAutoplay)
      ]);
}
