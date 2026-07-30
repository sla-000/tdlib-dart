// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains one row of the game high score table
@immutable
class GameHighScore extends TdObject {
  const GameHighScore({
    required this.position,
    required this.userId,
    required this.score,
  });

  /// [position] Position in the high score table
  final int position;

  /// [userId] User identifier
  final int userId;

  /// [score] User score
  final int score;

  static const String constructor = 'gameHighScore';

  static GameHighScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScore(
      position: (json['position'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      score: (json['score'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'position': position,
        'user_id': userId,
        'score': score,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GameHighScore &&
          const DeepCollectionEquality().equals(other.position, position) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.score, score));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(position),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(score)
      ]);
}
