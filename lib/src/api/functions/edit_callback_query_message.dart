// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the message from which a callback query has originated with an
/// ephemeral message; for bots only
/// Returns [Ok]
@immutable
class EditCallbackQueryMessage extends TdFunction {
  const EditCallbackQueryMessage({
    required this.callbackQueryId,
    required this.protectContent,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving
  final bool protectContent;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageText, inputMessageAnimation,
  /// inputMessageAudio, inputMessageDocument, inputMessagePhoto,
  /// inputMessageRichMessage, inputMessageSticker, inputMessageVideo,
  /// inputMessageVideoNote, inputMessageVoiceNote
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editCallbackQueryMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'callback_query_id': callbackQueryId.toString(),
        'protect_content': protectContent,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditCallbackQueryMessage &&
          const DeepCollectionEquality()
              .equals(other.callbackQueryId, callbackQueryId) &&
          const DeepCollectionEquality()
              .equals(other.protectContent, protectContent) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callbackQueryId),
        const DeepCollectionEquality().hash(protectContent),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
