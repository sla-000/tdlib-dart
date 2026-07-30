import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Translates a rich message to the given language
/// Returns [RichMessage]
@immutable
class TranslateRichMessage extends TdFunction {
  const TranslateRichMessage({
    required this.message,
    required this.toLanguageCode,
    required this.tone,
  });

  /// [message] Rich message to translate
  final InputRichMessage message;

  /// [toLanguageCode] Language code of the language to which the message is
  /// translated. See translateText.to_language_code for the list of supported
  /// values
  final String toLanguageCode;

  /// [tone] Tone of the translation; see translateText.tone for the list of
  /// supported values
  final String tone;

  static const String constructor = 'translateRichMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'to_language_code': toLanguageCode,
        'tone': tone,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
