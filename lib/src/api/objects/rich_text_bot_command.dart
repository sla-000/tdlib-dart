import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      botCommand: json['bot_command'] as String,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
