// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about an emoji reaction
@immutable
class EmojiReaction extends TdObject {
  const EmojiReaction({
    required this.emoji,
    required this.title,
    required this.isActive,
    required this.staticIcon,
    required this.appearAnimation,
    required this.selectAnimation,
    required this.activateAnimation,
    required this.effectAnimation,
    this.aroundAnimation,
    this.centerAnimation,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  /// [title] Reaction title
  final String title;

  /// [isActive] True, if the reaction can be added to new messages and enabled
  /// in chats
  final bool isActive;

  /// [staticIcon] Static icon for the reaction
  final Sticker staticIcon;

  /// [appearAnimation] Appear animation for the reaction
  final Sticker appearAnimation;

  /// [selectAnimation] Select animation for the reaction
  final Sticker selectAnimation;

  /// [activateAnimation] Activate animation for the reaction
  final Sticker activateAnimation;

  /// [effectAnimation] Effect animation for the reaction
  final Sticker effectAnimation;

  /// [aroundAnimation] Around animation for the reaction; may be null
  final Sticker? aroundAnimation;

  /// [centerAnimation] Center animation for the reaction; may be null
  final Sticker? centerAnimation;

  static const String constructor = 'emojiReaction';

  static EmojiReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiReaction(
      emoji: (json['emoji'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      isActive: (json['is_active'] as bool?) ?? false,
      staticIcon:
          Sticker.fromJson(json['static_icon'] as Map<String, dynamic>?)!,
      appearAnimation:
          Sticker.fromJson(json['appear_animation'] as Map<String, dynamic>?)!,
      selectAnimation:
          Sticker.fromJson(json['select_animation'] as Map<String, dynamic>?)!,
      activateAnimation: Sticker.fromJson(
          json['activate_animation'] as Map<String, dynamic>?)!,
      effectAnimation:
          Sticker.fromJson(json['effect_animation'] as Map<String, dynamic>?)!,
      aroundAnimation:
          Sticker.fromJson(json['around_animation'] as Map<String, dynamic>?),
      centerAnimation:
          Sticker.fromJson(json['center_animation'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        'title': title,
        'is_active': isActive,
        'static_icon': staticIcon.toJson(),
        'appear_animation': appearAnimation.toJson(),
        'select_animation': selectAnimation.toJson(),
        'activate_animation': activateAnimation.toJson(),
        'effect_animation': effectAnimation.toJson(),
        'around_animation': aroundAnimation?.toJson(),
        'center_animation': centerAnimation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmojiReaction &&
          const DeepCollectionEquality().equals(other.emoji, emoji) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.isActive, isActive) &&
          const DeepCollectionEquality().equals(other.staticIcon, staticIcon) &&
          const DeepCollectionEquality()
              .equals(other.appearAnimation, appearAnimation) &&
          const DeepCollectionEquality()
              .equals(other.selectAnimation, selectAnimation) &&
          const DeepCollectionEquality()
              .equals(other.activateAnimation, activateAnimation) &&
          const DeepCollectionEquality()
              .equals(other.effectAnimation, effectAnimation) &&
          const DeepCollectionEquality()
              .equals(other.aroundAnimation, aroundAnimation) &&
          const DeepCollectionEquality()
              .equals(other.centerAnimation, centerAnimation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(emoji),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(staticIcon),
        const DeepCollectionEquality().hash(appearAnimation),
        const DeepCollectionEquality().hash(selectAnimation),
        const DeepCollectionEquality().hash(activateAnimation),
        const DeepCollectionEquality().hash(effectAnimation),
        const DeepCollectionEquality().hash(aroundAnimation),
        const DeepCollectionEquality().hash(centerAnimation)
      ]);
}
