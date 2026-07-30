// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a sending of a paid message; relevant for regular users
/// only
@immutable
class StarTransactionTypePaidMessageSend extends StarTransactionType {
  const StarTransactionTypePaidMessageSend({
    required this.chatId,
    required this.messageCount,
  });

  /// [chatId] Identifier of the chat that received the payment
  final int chatId;

  /// [messageCount] Number of sent paid messages
  final int messageCount;

  static const String constructor = 'starTransactionTypePaidMessageSend';

  static StarTransactionTypePaidMessageSend? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidMessageSend(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageCount: (json['message_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_count': messageCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypePaidMessageSend &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.messageCount, messageCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageCount)
      ]);
}
