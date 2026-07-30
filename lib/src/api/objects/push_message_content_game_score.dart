// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new high score was achieved in a game
@immutable
class PushMessageContentGameScore extends PushMessageContent {
  const PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });

  /// [title] Game title, empty for pinned message
  final String title;

  /// [score] New score, 0 for pinned message
  final int score;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentGameScore';

  static PushMessageContentGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGameScore(
      title: (json['title'] as String?) ?? '',
      score: (json['score'] as int?) ?? 0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'score': score,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentGameScore &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.score, score) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(score),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
