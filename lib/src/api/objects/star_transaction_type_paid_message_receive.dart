// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a receiving of a paid message; relevant for regular
/// users, supergroup and channel chats only
@immutable
class StarTransactionTypePaidMessageReceive extends StarTransactionType {
  const StarTransactionTypePaidMessageReceive({
    required this.senderId,
    required this.messageCount,
    required this.commissionPerMille,
    required this.commissionStarAmount,
  });

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [messageCount] Number of received paid messages
  final int messageCount;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars paid for message sending
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount commissionStarAmount;

  static const String constructor = 'starTransactionTypePaidMessageReceive';

  static StarTransactionTypePaidMessageReceive? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidMessageReceive(
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      messageCount: json['message_count'] as int,
      commissionPerMille: json['commission_per_mille'] as int,
      commissionStarAmount: StarAmount.fromJson(
          json['commission_star_amount'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_id': senderId.toJson(),
        'message_count': messageCount,
        'commission_per_mille': commissionPerMille,
        'commission_star_amount': commissionStarAmount.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypePaidMessageReceive &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality()
              .equals(other.messageCount, messageCount) &&
          const DeepCollectionEquality()
              .equals(other.commissionPerMille, commissionPerMille) &&
          const DeepCollectionEquality()
              .equals(other.commissionStarAmount, commissionStarAmount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(messageCount),
        const DeepCollectionEquality().hash(commissionPerMille),
        const DeepCollectionEquality().hash(commissionStarAmount)
      ]);
}
