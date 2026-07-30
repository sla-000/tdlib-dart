// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a command supported by a bot
@immutable
class BotCommand extends TdObject {
  const BotCommand({
    required this.command,
    required this.description,
  });

  /// [command] Text of the bot command
  final String command;

  /// param_[description] Description of the bot command
  final String description;

  static const String constructor = 'botCommand';

  static BotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommand(
      command: json['command'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'command': command,
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BotCommand &&
          const DeepCollectionEquality().equals(other.command, command) &&
          const DeepCollectionEquality()
              .equals(other.description, description));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(command),
        const DeepCollectionEquality().hash(description)
      ]);
}
