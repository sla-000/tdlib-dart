// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// User changed its reactions on a message with public reactions; for bots
/// only
@immutable
class UpdateMessageReaction extends Update {
  const UpdateMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.actorId,
    required this.date,
    required this.oldReactionTypes,
    required this.newReactionTypes,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [actorId] Identifier of the user or chat that changed reactions
  final MessageSender actorId;

  /// [date] Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// [oldReactionTypes] Old list of chosen reactions
  final List<ReactionType> oldReactionTypes;

  /// [newReactionTypes] New list of chosen reactions
  final List<ReactionType> newReactionTypes;

  static const String constructor = 'updateMessageReaction';

  static UpdateMessageReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageReaction(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      actorId:
          MessageSender.fromJson(json['actor_id'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      oldReactionTypes: List<ReactionType>.from(
          ((json['old_reaction_types'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ReactionType.fromJson(item))
              .toList()),
      newReactionTypes: List<ReactionType>.from(
          ((json['new_reaction_types'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ReactionType.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'actor_id': actorId.toJson(),
        'date': date,
        'old_reaction_types':
            oldReactionTypes.map((item) => item.toJson()).toList(),
        'new_reaction_types':
            newReactionTypes.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageReaction &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.actorId, actorId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality()
              .equals(other.oldReactionTypes, oldReactionTypes) &&
          const DeepCollectionEquality()
              .equals(other.newReactionTypes, newReactionTypes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(actorId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(oldReactionTypes),
        const DeepCollectionEquality().hash(newReactionTypes)
      ]);
}
