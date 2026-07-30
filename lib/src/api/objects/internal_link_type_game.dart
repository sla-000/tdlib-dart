// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a game. Call searchPublicChat with the given bot
/// username, check that the user is a bot, ask the current user to select a
/// chat to send the game, and then call sendMessage with inputMessageGame
@immutable
class InternalLinkTypeGame extends InternalLinkType {
  const InternalLinkTypeGame({
    required this.botUsername,
    required this.gameShortName,
  });

  /// [botUsername] Username of the bot that owns the game
  final String botUsername;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  static const String constructor = 'internalLinkTypeGame';

  static InternalLinkTypeGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGame(
      botUsername: (json['bot_username'] as String?) ?? '',
      gameShortName: (json['game_short_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'game_short_name': gameShortName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeGame &&
          const DeepCollectionEquality()
              .equals(other.botUsername, botUsername) &&
          const DeepCollectionEquality()
              .equals(other.gameShortName, gameShortName));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUsername),
        const DeepCollectionEquality().hash(gameShortName)
      ]);
}
