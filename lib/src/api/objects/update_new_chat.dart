// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new chat has been loaded/created. This update is guaranteed to come
/// before the chat identifier is returned to the application. The chat field
/// changes will be reported through separate updates
@immutable
class UpdateNewChat extends Update {
  const UpdateNewChat({
    required this.chat,
  });

  /// [chat] The chat
  final Chat chat;

  static const String constructor = 'updateNewChat';

  static UpdateNewChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChat(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat': chat.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewChat &&
          const DeepCollectionEquality().equals(other.chat, chat));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(chat)]);
}
