import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The offer must be accepted or rejected
@immutable
class GiftPurchaseOfferStatePending extends GiftPurchaseOfferState {
  const GiftPurchaseOfferStatePending();

  static const String constructor = 'giftPurchaseOfferStatePending';

  static GiftPurchaseOfferStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftPurchaseOfferStatePending();
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
