// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents information about a game
@immutable
class InlineQueryResultGame extends InlineQueryResult {
  const InlineQueryResultGame({
    required this.id,
    required this.game,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [game] Game result
  final Game game;

  static const String constructor = 'inlineQueryResultGame';

  static InlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultGame(
      id: json['id'] as String,
      game: Game.fromJson(json['game'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'game': game.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultGame &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.game, game));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(game)
      ]);
}
