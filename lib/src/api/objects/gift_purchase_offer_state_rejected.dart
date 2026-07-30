import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The offer was rejected
@immutable
class GiftPurchaseOfferStateRejected extends GiftPurchaseOfferState {
  const GiftPurchaseOfferStateRejected();

  static const String constructor = 'giftPurchaseOfferStateRejected';

  static GiftPurchaseOfferStateRejected? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftPurchaseOfferStateRejected();
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
