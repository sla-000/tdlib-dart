// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes text using an AI model; must not be used in secret chats. May
/// return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram
/// Premium is required to send further requests
/// Returns [FormattedText]
@immutable
class ComposeTextWithAi extends TdFunction {
  const ComposeTextWithAi({
    required this.text,
    required this.translateToLanguageCode,
    required this.styleName,
    required this.addEmojis,
  });

  /// [text] The original text
  final FormattedText text;

  /// [translateToLanguageCode] Pass a language code to which the text will be
  /// translated; pass an empty string if translation isn't needed. See
  /// translateText.to_language_code for the list of supported values
  final String translateToLanguageCode;

  /// [styleName] Name of the style of the resulted text; handle
  /// updateTextCompositionStyles to get the list of supported styles; pass an
  /// empty string to keep the current style of the text
  final String styleName;

  /// [addEmojis] Pass true to add emoji to the text
  final bool addEmojis;

  static const String constructor = 'composeTextWithAi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'translate_to_language_code': translateToLanguageCode,
        'style_name': styleName,
        'add_emojis': addEmojis,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ComposeTextWithAi &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.translateToLanguageCode, translateToLanguageCode) &&
          const DeepCollectionEquality().equals(other.styleName, styleName) &&
          const DeepCollectionEquality().equals(other.addEmojis, addEmojis));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(translateToLanguageCode),
        const DeepCollectionEquality().hash(styleName),
        const DeepCollectionEquality().hash(addEmojis)
      ]);
}
