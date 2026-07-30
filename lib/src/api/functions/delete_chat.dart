// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes a chat along with all messages in the corresponding chat for all
/// chat members. For group chats this will release the usernames and remove
/// all members. Use the field chat.can_be_deleted_for_all_users to find
/// whether the method can be applied to the chat
/// Returns [Ok]
@immutable
class DeleteChat extends TdFunction {
  const DeleteChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'deleteChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteChat &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
