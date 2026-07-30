import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      text: json['text'] as String,
      iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id']) ?? 0,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
