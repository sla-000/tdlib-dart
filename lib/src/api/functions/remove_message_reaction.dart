// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a reaction from a message. A chosen reaction can always be removed
/// Returns [Ok]
@immutable
class RemoveMessageReaction extends TdFunction {
  const RemoveMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionType] Type of the reaction to remove. The paid reaction can't be
  /// removed
  final ReactionType reactionType;

  static const String constructor = 'removeMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reaction_type': reactionType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveMessageReaction &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.reactionType, reactionType));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(reactionType)
      ]);
}
