// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The owner of the chat has changed
@immutable
class MessageChatOwnerChanged extends MessageContent {
  const MessageChatOwnerChanged({
    required this.newOwnerUserId,
  });

  /// [newOwnerUserId] Identifier of the user who is the new owner of the chat
  final int newOwnerUserId;

  static const String constructor = 'messageChatOwnerChanged';

  static MessageChatOwnerChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatOwnerChanged(
      newOwnerUserId: (json['new_owner_user_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'new_owner_user_id': newOwnerUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatOwnerChanged &&
          const DeepCollectionEquality()
              .equals(other.newOwnerUserId, newOwnerUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(newOwnerUserId)]);
}
