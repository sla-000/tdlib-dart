import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat theme based on an emoji
@immutable
class ChatThemeEmoji extends ChatTheme {
  const ChatThemeEmoji({
    required this.name,
  });

  /// [name] Name of the theme; full theme description is received through
  /// updateEmojiChatThemes
  final String name;

  static const String constructor = 'chatThemeEmoji';

  static ChatThemeEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatThemeEmoji(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
