// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all welcome messages of a chat; requires can_send_welcome_messages
/// administrator right in the chat
/// Returns [Ok]
@immutable
class DeleteAllChatWelcomeMessages extends TdFunction {
  const DeleteAllChatWelcomeMessages({
    required this.chatId,
  });

  /// [chatId] The identifier of the chat
  final int chatId;

  static const String constructor = 'deleteAllChatWelcomeMessages';

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
          other is DeleteAllChatWelcomeMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
