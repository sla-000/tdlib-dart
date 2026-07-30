// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the high scores for a game and some part of the high score table
/// in the range of the specified user; for bots only
/// Returns [GameHighScores]
@immutable
class GetGameHighScores extends TdFunction {
  const GetGameHighScores({
    required this.chatId,
    required this.messageId,
    required this.userId,
  });

  /// [chatId] The chat that contains the message with the game
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getGameHighScores';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGameHighScores &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(userId)
      ]);
}
