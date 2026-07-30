// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a single button in a bot keyboard
@immutable
class KeyboardButton extends TdObject {
  const KeyboardButton({
    required this.text,
    required this.iconCustomEmojiId,
    required this.style,
    required this.type,
  });

  /// [text] Text of the button
  final String text;

  /// [iconCustomEmojiId] Identifier of the custom emoji that must be shown on
  /// the button; 0 if none
  final int iconCustomEmojiId;

  /// [style] Style of the button
  final ButtonStyle style;

  /// [type] Type of the button
  final KeyboardButtonType type;

  static const String constructor = 'keyboardButton';

  static KeyboardButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButton(
      text: (json['text'] as String?) ?? '',
      iconCustomEmojiId: (json['icon_custom_emoji_id'] is int
              ? json['icon_custom_emoji_id'] as int
              : int.tryParse(json['icon_custom_emoji_id']?.toString() ?? '')) ??
          0,
      style: ButtonStyle.fromJson(json['style'] as Map<String, dynamic>?)!,
      type: KeyboardButtonType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'icon_custom_emoji_id': iconCustomEmojiId.toString(),
        'style': style.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is KeyboardButton &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.iconCustomEmojiId, iconCustomEmojiId) &&
          const DeepCollectionEquality().equals(other.style, style) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(iconCustomEmojiId),
        const DeepCollectionEquality().hash(style),
        const DeepCollectionEquality().hash(type)
      ]);
}
