import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a refund for failed withdrawal of earnings through Fragment
@immutable
class ChatRevenueTransactionTypeFragmentRefund
    extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeFragmentRefund({
    required this.refundDate,
  });

  /// [refundDate] Point in time (Unix timestamp) when the transaction was
  /// refunded
  final int refundDate;

  static const String constructor = 'chatRevenueTransactionTypeFragmentRefund';

  static ChatRevenueTransactionTypeFragmentRefund? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeFragmentRefund(
      refundDate: json['refund_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'refund_date': refundDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
