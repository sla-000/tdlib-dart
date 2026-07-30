// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a successful payment
/// Returns [PaymentReceipt]
@immutable
class GetPaymentReceipt extends TdFunction {
  const GetPaymentReceipt({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the messagePaymentSuccessful message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'getPaymentReceipt';

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
          other is GetPaymentReceipt &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
