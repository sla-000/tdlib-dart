// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The payment was done using Telegram Stars
@immutable
class PaymentReceiptTypeStars extends PaymentReceiptType {
  const PaymentReceiptTypeStars({
    required this.starCount,
    required this.transactionId,
  });

  /// [starCount] Number of Telegram Stars that were paid
  final int starCount;

  /// [transactionId] Unique identifier of the transaction that can be used to
  /// dispute it
  final String transactionId;

  static const String constructor = 'paymentReceiptTypeStars';

  static PaymentReceiptTypeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceiptTypeStars(
      starCount: (json['star_count'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'transaction_id': transactionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentReceiptTypeStars &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.transactionId, transactionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(transactionId)
      ]);
}
