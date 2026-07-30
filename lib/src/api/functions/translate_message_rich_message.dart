// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Extracts rich message of the given message and translates it to the given
/// language
/// Returns [RichMessage]
@immutable
class TranslateMessageRichMessage extends TdFunction {
  const TranslateMessageRichMessage({
    required this.chatId,
    required this.messageId,
    required this.toLanguageCode,
    required this.tone,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [toLanguageCode] Language code of the language to which the message is
  /// translated. See translateText.to_language_code for the list of supported
  /// values
  final String toLanguageCode;

  /// [tone] Tone of the translation; see translateText.tone for the list of
  /// supported values
  final String tone;

  static const String constructor = 'translateMessageRichMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'to_language_code': toLanguageCode,
        'tone': tone,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TranslateMessageRichMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.toLanguageCode, toLanguageCode) &&
          const DeepCollectionEquality().equals(other.tone, tone));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(toLanguageCode),
        const DeepCollectionEquality().hash(tone)
      ]);
}
