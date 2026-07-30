// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The title of a chat was changed
@immutable
class UpdateChatTitle extends Update {
  const UpdateChatTitle({
    required this.chatId,
    required this.title,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] The new chat title
  final String title;

  static const String constructor = 'updateChatTitle';

  static UpdateChatTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTitle(
      chatId: json['chat_id'] as int,
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatTitle &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(title)
      ]);
}
