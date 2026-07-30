import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Extracts text or caption of the given message and translates it to the
/// given language; must not be used in secret chats. If the current user is a
/// Telegram Premium user, then text formatting is preserved
/// Returns [FormattedText]
@immutable
class TranslateMessageText extends TdFunction {
  const TranslateMessageText({
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

  static const String constructor = 'translateMessageText';

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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
