import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Summarizes content of the message with non-empty summary_language_code
/// Returns [FormattedText]
@immutable
class SummarizeMessage extends TdFunction {
  const SummarizeMessage({
    required this.chatId,
    required this.messageId,
    required this.translateToLanguageCode,
    required this.tone,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [translateToLanguageCode] Pass a language code to which the summary will
  /// be translated; pass an empty string if translation isn't needed. See
  /// translateText.to_language_code for the list of supported values
  final String translateToLanguageCode;

  /// [tone] Tone of the summarization; see translateText.tone for the list of
  /// supported values
  final String tone;

  static const String constructor = 'summarizeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'translate_to_language_code': translateToLanguageCode,
        'tone': tone,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
