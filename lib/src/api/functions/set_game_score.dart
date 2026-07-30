// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Updates the game score of the specified user in the game; for bots only
/// Returns [Message]
@immutable
class SetGameScore extends TdFunction {
  const SetGameScore({
    required this.chatId,
    required this.messageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });

  /// [chatId] The chat to which the message with the game belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [editMessage] Pass true to edit the game message to include the current
  /// scoreboard
  final bool editMessage;

  /// [userId] User identifier
  final int userId;

  /// [score] The new score
  final int score;

  /// [force] Pass true to update the score even if it decreases. If the score
  /// is 0, the user will be deleted from the high score table
  final bool force;

  static const String constructor = 'setGameScore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'edit_message': editMessage,
        'user_id': userId,
        'score': score,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetGameScore &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.editMessage, editMessage) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.score, score) &&
          const DeepCollectionEquality().equals(other.force, force));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(editMessage),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(score),
        const DeepCollectionEquality().hash(force)
      ]);
}
