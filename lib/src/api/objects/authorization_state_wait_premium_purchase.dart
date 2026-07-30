import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must buy Telegram Premium as an in-store purchase to log in. Call
/// checkAuthenticationPremiumPurchase and then
/// setAuthenticationPremiumPurchaseTransaction
@immutable
class AuthorizationStateWaitPremiumPurchase extends AuthorizationState {
  const AuthorizationStateWaitPremiumPurchase({
    required this.storeProductId,
    required this.premiumDayCount,
    required this.supportEmailAddress,
    required this.supportEmailSubject,
  });

  /// [storeProductId] Identifier of the store product that must be bought
  final String storeProductId;

  /// [premiumDayCount] Duration of the Telegram Premium subscription after the
  /// purchase; may be 0 if Telegram Premium subscription will not be granted
  final int premiumDayCount;

  /// [supportEmailAddress] Email address to use for support if the user has
  /// issues with Telegram Premium purchase
  final String supportEmailAddress;

  /// [supportEmailSubject] Subject for the email sent to the support email
  /// address
  final String supportEmailSubject;

  static const String constructor = 'authorizationStateWaitPremiumPurchase';

  static AuthorizationStateWaitPremiumPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPremiumPurchase(
      storeProductId: json['store_product_id'] as String,
      premiumDayCount: json['premium_day_count'] as int,
      supportEmailAddress: json['support_email_address'] as String,
      supportEmailSubject: json['support_email_subject'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'store_product_id': storeProductId,
        'premium_day_count': premiumDayCount,
        'support_email_address': supportEmailAddress,
        'support_email_subject': supportEmailSubject,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
