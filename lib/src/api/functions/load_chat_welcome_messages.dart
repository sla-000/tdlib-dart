// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Loads welcome messages of a chat; requires can_send_welcome_messages
/// administrator right in the chat. The loaded messages will be sent through
/// updateChatWelcomeMessages
/// Returns [Ok]
@immutable
class LoadChatWelcomeMessages extends TdFunction {
  const LoadChatWelcomeMessages({
    required this.chatId,
  });

  /// [chatId] The identifier of the chat
  final int chatId;

  static const String constructor = 'loadChatWelcomeMessages';

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
          other is LoadChatWelcomeMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatId)]);
}
