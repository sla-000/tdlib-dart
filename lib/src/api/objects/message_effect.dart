// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about an effect added to a message
@immutable
class MessageEffect extends TdObject {
  const MessageEffect({
    required this.id,
    this.staticIcon,
    required this.emoji,
    required this.isPremium,
    required this.type,
  });

  /// [id] Unique identifier of the effect
  final int id;

  /// [staticIcon] Static icon for the effect in WEBP format; may be null if
  /// none
  final Sticker? staticIcon;

  /// [emoji] Emoji corresponding to the effect that can be used if static icon
  /// isn't available
  final String emoji;

  /// [isPremium] True, if Telegram Premium subscription is required to use the
  /// effect
  final bool isPremium;

  /// [type] Type of the effect
  final MessageEffectType type;

  static const String constructor = 'messageEffect';

  static MessageEffect? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffect(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      staticIcon:
          Sticker.fromJson(json['static_icon'] as Map<String, dynamic>?),
      emoji: (json['emoji'] as String?) ?? '',
      isPremium: (json['is_premium'] as bool?) ?? false,
      type: MessageEffectType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'static_icon': staticIcon?.toJson(),
        'emoji': emoji,
        'is_premium': isPremium,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageEffect &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.staticIcon, staticIcon) &&
          const DeepCollectionEquality().equals(other.emoji, emoji) &&
          const DeepCollectionEquality().equals(other.isPremium, isPremium) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(staticIcon),
        const DeepCollectionEquality().hash(emoji),
        const DeepCollectionEquality().hash(isPremium),
        const DeepCollectionEquality().hash(type)
      ]);
}
