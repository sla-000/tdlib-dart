// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to the screen for gifting Telegram Premium
/// subscriptions to friends via inputInvoiceTelegram with
/// telegramPaymentPurposePremiumGift payments or in-store purchases
@immutable
class InternalLinkTypePremiumGiftPurchase extends InternalLinkType {
  const InternalLinkTypePremiumGiftPurchase({
    required this.referrer,
  });

  /// [referrer] Referrer specified in the link
  final String referrer;

  static const String constructor = 'internalLinkTypePremiumGiftPurchase';

  static InternalLinkTypePremiumGiftPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumGiftPurchase(
      referrer: (json['referrer'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'referrer': referrer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypePremiumGiftPurchase &&
          const DeepCollectionEquality().equals(other.referrer, referrer));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(referrer)]);
}
