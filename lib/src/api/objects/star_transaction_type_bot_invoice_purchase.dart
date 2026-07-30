// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of a product from a bot or a business
/// account by the current user; relevant for regular users only
@immutable
class StarTransactionTypeBotInvoicePurchase extends StarTransactionType {
  const StarTransactionTypeBotInvoicePurchase({
    required this.userId,
    required this.productInfo,
  });

  /// [userId] Identifier of the bot or the business account user who created
  /// the invoice
  final int userId;

  /// [productInfo] Information about the bought product
  final ProductInfo productInfo;

  static const String constructor = 'starTransactionTypeBotInvoicePurchase';

  static StarTransactionTypeBotInvoicePurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotInvoicePurchase(
      userId: (json['user_id'] as int?) ?? 0,
      productInfo:
          ProductInfo.fromJson(json['product_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'product_info': productInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeBotInvoicePurchase &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.productInfo, productInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(productInfo)
      ]);
}
