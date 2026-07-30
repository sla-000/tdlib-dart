import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The owner of the chat has left
@immutable
class MessageChatOwnerLeft extends MessageContent {
  const MessageChatOwnerLeft({
    required this.newOwnerUserId,
  });

  /// [newOwnerUserId] Identifier of the user who will become the new owner of
  /// the chat if the previous owner isn't return; 0 if none
  final int newOwnerUserId;

  static const String constructor = 'messageChatOwnerLeft';

  static MessageChatOwnerLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatOwnerLeft(
      newOwnerUserId: json['new_owner_user_id'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
