// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of bot commands
@immutable
class BotCommands extends TdObject {
  const BotCommands({
    required this.botUserId,
    required this.commands,
  });

  /// [botUserId] Bot's user identifier
  final int botUserId;

  /// [commands] List of bot commands
  final List<BotCommand> commands;

  static const String constructor = 'botCommands';

  static BotCommands? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommands(
      botUserId: json['bot_user_id'] as int,
      commands: List<BotCommand>.from(
          ((json['commands'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BotCommand.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BotCommands &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.commands, commands));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(commands)
      ]);
}
