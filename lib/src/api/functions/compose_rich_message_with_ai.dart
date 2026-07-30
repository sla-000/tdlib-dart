import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a rich message using an AI model. May return an error with a
/// message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send
/// further requests
/// Returns [RichMessage]
@immutable
class ComposeRichMessageWithAi extends TdFunction {
  const ComposeRichMessageWithAi({
    required this.message,
    required this.translateToLanguageCode,
    required this.styleName,
    required this.customPrompt,
    required this.addEmojis,
  });

  /// [message] The original message
  final InputRichMessage message;

  /// [translateToLanguageCode] Pass a language code to which the text will be
  /// translated; pass an empty string if translation isn't needed. See
  /// translateText.to_language_code for the list of supported values
  final String translateToLanguageCode;

  /// [styleName] Name of the style of the resulted text; handle
  /// updateTextCompositionStyles to get the list of supported styles; pass an
  /// empty string to keep the current style of the text or if a custom prompt
  /// is used
  final String styleName;

  /// [customPrompt] Custom prompt that will be used instead of style_name;
  /// 0-getOption("text_composition_style_prompt_length_max") characters
  final String customPrompt;

  /// [addEmojis] Pass true to add emoji to the text
  final bool addEmojis;

  static const String constructor = 'composeRichMessageWithAi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'translate_to_language_code': translateToLanguageCode,
        'style_name': styleName,
        'custom_prompt': customPrompt,
        'add_emojis': addEmojis,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
