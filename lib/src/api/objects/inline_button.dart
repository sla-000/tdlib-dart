// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a button inside a rich message
@immutable
class InlineButton extends TdObject {
  const InlineButton({
    required this.text,
    required this.style,
    required this.type,
  });

  /// [text] Text of the button; only richTexts, richTextPlain, and
  /// richTextCustomEmoji are allowed
  final RichText text;

  /// [style] Style of the button
  final ButtonStyle style;

  /// [type] Type of the button; must be one of inlineKeyboardButtonTypeUrl,
  /// inlineKeyboardButtonTypeLoginUrl, inlineKeyboardButtonTypeWebApp,
  /// inlineKeyboardButtonTypeCallback, inlineKeyboardButtonTypeSwitchInline,
  /// inlineKeyboardButtonTypeUser, inlineKeyboardButtonTypeCopyText.
  /// Additionally, inlineKeyboardButtonTypeCallbackWithPassword and
  /// inlineKeyboardButtonTypeDisabled may be received in incoming messages.
  /// Regular users may use only inlineKeyboardButtonTypeUrl,
  /// inlineKeyboardButtonTypeUser and inlineKeyboardButtonTypeCopyText
  final InlineKeyboardButtonType type;

  static const String constructor = 'inlineButton';

  static InlineButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineButton(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      style: ButtonStyle.fromJson(json['style'] as Map<String, dynamic>?)!,
      type: InlineKeyboardButtonType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'style': style.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineButton &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.style, style) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(style),
        const DeepCollectionEquality().hash(type)
      ]);
}
