import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat theme was changed
@immutable
class UpdateChatTheme extends Update {
  const UpdateChatTheme({
    required this.chatId,
    this.theme,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [theme] The new theme of the chat; may be null if theme was reset to
  /// default
  final ChatTheme? theme;

  static const String constructor = 'updateChatTheme';

  static UpdateChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTheme(
      chatId: json['chat_id'] as int,
      theme: ChatTheme.fromJson(json['theme'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
