// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bot command
@immutable
class RichTextBotCommand extends RichText {
  const RichTextBotCommand({
    required this.text,
    required this.botCommand,
  });

  /// [text] Text
  final RichText text;

  /// [botCommand] The bot command
  final String botCommand;

  static const String constructor = 'richTextBotCommand';

  static RichTextBotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextBotCommand(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      botCommand: (json['bot_command'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'bot_command': botCommand,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextBotCommand &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.botCommand, botCommand));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(botCommand)
      ]);
}
