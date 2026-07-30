// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the tag or custom title of a chat member; requires can_manage_tags
/// administrator right to change tag of other users; for basic groups and
/// supergroups only
/// Returns [Ok]
@immutable
class SetChatMemberTag extends TdFunction {
  const SetChatMemberTag({
    required this.chatId,
    required this.userId,
    required this.tag,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user, which tag is changed. Chats can't have
  /// member tags
  final int userId;

  /// [tag] The new tag of the member in the chat; 0-16 characters without emoji
  final String tag;

  static const String constructor = 'setChatMemberTag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        'tag': tag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatMemberTag &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.tag, tag));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(tag)
      ]);
}
