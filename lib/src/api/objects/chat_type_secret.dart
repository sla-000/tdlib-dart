// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A secret chat with a user
@immutable
class ChatTypeSecret extends ChatType {
  const ChatTypeSecret({
    required this.secretChatId,
    required this.userId,
  });

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  /// [userId] User identifier of the other user in the secret chat
  final int userId;

  static const String constructor = 'chatTypeSecret';

  static ChatTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSecret(
      secretChatId: json['secret_chat_id'] as int,
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'secret_chat_id': secretChatId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatTypeSecret &&
          const DeepCollectionEquality()
              .equals(other.secretChatId, secretChatId) &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(secretChatId),
        const DeepCollectionEquality().hash(userId)
      ]);
}
