// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A scope covering a member of a chat
@immutable
class BotCommandScopeChatMember extends BotCommandScope {
  const BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'botCommandScopeChatMember';

  static BotCommandScopeChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatMember(
      chatId: json['chat_id'] as int,
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BotCommandScopeChatMember &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(userId)
      ]);
}
