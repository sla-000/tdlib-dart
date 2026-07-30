// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a game
@immutable
class MessageGame extends MessageContent {
  const MessageGame({
    required this.game,
  });

  /// [game] The game description
  final Game game;

  static const String constructor = 'messageGame';

  static MessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGame(
      game: Game.fromJson(json['game'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'game': game.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGame &&
          const DeepCollectionEquality().equals(other.game, game));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(game)]);
}
