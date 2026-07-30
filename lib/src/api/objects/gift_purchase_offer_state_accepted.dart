// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftPurchaseOfferStateAccepted);

  @override
  int get hashCode => runtimeType.hashCode;
}
