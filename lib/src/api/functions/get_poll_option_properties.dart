// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns properties of a poll option. This is an offline method
/// Returns [PollOptionProperties]
@immutable
class GetPollOptionProperties extends TdFunction {
  const GetPollOptionProperties({
    required this.chatId,
    required this.messageId,
    required this.pollOptionId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [pollOptionId] Unique identifier of the answer option, which properties
  /// will be returned
  final String pollOptionId;

  static const String constructor = 'getPollOptionProperties';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'poll_option_id': pollOptionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPollOptionProperties &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.pollOptionId, pollOptionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(pollOptionId)
      ]);
}
