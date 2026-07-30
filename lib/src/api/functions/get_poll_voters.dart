// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns message senders voted for the specified option in a poll; use
/// poll.can_get_voters to check whether the method can be used. For optimal
/// performance, the number of returned users is chosen by TDLib
/// Returns [PollVoters]
@immutable
class GetPollVoters extends TdFunction {
  const GetPollVoters({
    required this.chatId,
    required this.messageId,
    required this.optionId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [optionId] 0-based identifier of the answer option
  final int optionId;

  /// [offset] Number of voters to skip in the result; must be non-negative
  final int offset;

  /// [limit] The maximum number of voters to be returned; must be positive and
  /// can't be greater than 50. For optimal performance, the number of returned
  /// voters is chosen by TDLib and can be smaller than the specified limit,
  /// even if the end of the voter list has not been reached
  final int limit;

  static const String constructor = 'getPollVoters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'option_id': optionId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPollVoters &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.optionId, optionId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(optionId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
