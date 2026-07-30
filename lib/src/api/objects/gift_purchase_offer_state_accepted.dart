import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The offer was accepted
@immutable
class GiftPurchaseOfferStateAccepted extends GiftPurchaseOfferState {
  const GiftPurchaseOfferStateAccepted();

  static const String constructor = 'giftPurchaseOfferStateAccepted';

  static GiftPurchaseOfferStateAccepted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftPurchaseOfferStateAccepted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
