// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new high score was achieved in a game
@immutable
class MessageGameScore extends MessageContent {
  const MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });

  /// [gameMessageId] Identifier of the message with the game, can be an
  /// identifier of a deleted message
  final int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented
  /// in the message with the game
  final int gameId;

  /// [score] New score
  final int score;

  static const String constructor = 'messageGameScore';

  static MessageGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGameScore(
      gameMessageId: (json['game_message_id'] as int?) ?? 0,
      gameId: (json['game_id'] is int
              ? json['game_id'] as int
              : int.tryParse(json['game_id']?.toString() ?? '')) ??
          0,
      score: (json['score'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'game_message_id': gameMessageId,
        'game_id': gameId.toString(),
        'score': score,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGameScore &&
          const DeepCollectionEquality()
              .equals(other.gameMessageId, gameMessageId) &&
          const DeepCollectionEquality().equals(other.gameId, gameId) &&
          const DeepCollectionEquality().equals(other.score, score));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gameMessageId),
        const DeepCollectionEquality().hash(gameId),
        const DeepCollectionEquality().hash(score)
      ]);
}
