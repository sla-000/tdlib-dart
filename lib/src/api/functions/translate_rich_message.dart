// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TranslateRichMessage &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality()
              .equals(other.toLanguageCode, toLanguageCode) &&
          const DeepCollectionEquality().equals(other.tone, tone));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(toLanguageCode),
        const DeepCollectionEquality().hash(tone)
      ]);
}
