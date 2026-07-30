import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a receiving of a paid group call message; relevant for
/// regular users and channel chats only
@immutable
class StarTransactionTypePaidGroupCallMessageReceive
    extends StarTransactionType {
  const StarTransactionTypePaidGroupCallMessageReceive({
    required this.senderId,
    required this.commissionPerMille,
    required this.commissionStarAmount,
  });

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars paid for message sending
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount commissionStarAmount;

  static const String constructor =
      'starTransactionTypePaidGroupCallMessageReceive';

  static StarTransactionTypePaidGroupCallMessageReceive? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallMessageReceive(
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
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
        'commission_per_mille': commissionPerMille,
        'commission_star_amount': commissionStarAmount.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
