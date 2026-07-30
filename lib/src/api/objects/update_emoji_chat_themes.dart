// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of available emoji chat themes has changed
@immutable
class UpdateEmojiChatThemes extends Update {
  const UpdateEmojiChatThemes({
    required this.chatThemes,
  });

  /// [chatThemes] The new list of emoji chat themes
  final List<EmojiChatTheme> chatThemes;

  static const String constructor = 'updateEmojiChatThemes';

  static UpdateEmojiChatThemes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateEmojiChatThemes(
      chatThemes: List<EmojiChatTheme>.from(((json['chat_themes']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => EmojiChatTheme.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_themes': chatThemes.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateEmojiChatThemes &&
          const DeepCollectionEquality().equals(other.chatThemes, chatThemes));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatThemes)]);
}
