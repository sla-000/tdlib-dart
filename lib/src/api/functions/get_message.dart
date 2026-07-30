// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a message. Returns a 404 error if the message
/// doesn't exist
/// Returns [Message]
@immutable
class GetMessage extends TdFunction {
  const GetMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message to get
  final int messageId;

  static const String constructor = 'getMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
