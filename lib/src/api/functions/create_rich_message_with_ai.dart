import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new rich message using an AI model. May return an error with a
/// message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send
/// further requests
/// Returns [RichMessage]
@immutable
class CreateRichMessageWithAi extends TdFunction {
  const CreateRichMessageWithAi({
    required this.prompt,
    required this.languageCode,
    required this.addEmojis,
  });

  /// [prompt] Prompt that will be used to create the message;
  /// 0-getOption("text_composition_style_prompt_length_max") characters
  final String prompt;

  /// [languageCode] Pass a language code in which the text will be created
  final String languageCode;

  /// [addEmojis] Pass true to add emoji to the text
  final bool addEmojis;

  static const String constructor = 'createRichMessageWithAi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'prompt': prompt,
        'language_code': languageCode,
        'add_emojis': addEmojis,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
