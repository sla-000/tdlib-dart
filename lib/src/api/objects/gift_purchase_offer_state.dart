import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a gift purchase offer
@immutable
abstract class GiftPurchaseOfferState extends TdObject {
  const GiftPurchaseOfferState();

  static const String constructor = 'giftPurchaseOfferState';

  /// Inherited by:
  /// [GiftPurchaseOfferStateAccepted]
  /// [GiftPurchaseOfferStatePending]
  /// [GiftPurchaseOfferStateRejected]
  static GiftPurchaseOfferState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftPurchaseOfferStateAccepted.constructor:
        return GiftPurchaseOfferStateAccepted.fromJson(json);
      case GiftPurchaseOfferStatePending.constructor:
        return GiftPurchaseOfferStatePending.fromJson(json);
      case GiftPurchaseOfferStateRejected.constructor:
        return GiftPurchaseOfferStateRejected.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
