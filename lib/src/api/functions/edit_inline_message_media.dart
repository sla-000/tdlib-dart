// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the media content of a message with a text, an animation, an audio,
/// a document, a photo or a video in an inline message sent via a bot; for
/// bots only
/// Returns [Ok]
@immutable
class EditInlineMessageMedia extends TdFunction {
  const EditInlineMessageMedia({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageAnimation, inputMessageAudio,
  /// inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editInlineMessageMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditInlineMessageMedia &&
          const DeepCollectionEquality()
              .equals(other.inlineMessageId, inlineMessageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inlineMessageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
