import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A theme in the chat has been changed
@immutable
class MessageChatSetTheme extends MessageContent {
  const MessageChatSetTheme({
    this.theme,
  });

  /// [theme] New theme for the chat; may be null if chat theme was reset to the
  /// default one
  final ChatTheme? theme;

  static const String constructor = 'messageChatSetTheme';

  static MessageChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTheme(
      theme: ChatTheme.fromJson(json['theme'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
