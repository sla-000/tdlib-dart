// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Stops a poll
/// Returns [Ok]
@immutable
class StopPoll extends TdFunction {
  const StopPoll({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll. Use
  /// messageProperties.can_be_edited to check whether the poll can be stopped
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'stopPoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StopPoll &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(replyMarkup)
      ]);
}
