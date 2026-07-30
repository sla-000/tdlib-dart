// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The gifts will be sorted by the last date when their price was changed
/// from the newest to the oldest
@immutable
class GiftForResaleOrderPriceChangeDate extends GiftForResaleOrder {
  const GiftForResaleOrderPriceChangeDate();

  static const String constructor = 'giftForResaleOrderPriceChangeDate';

  static GiftForResaleOrderPriceChangeDate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderPriceChangeDate();
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
          other is GiftForResaleOrderPriceChangeDate);

  @override
  int get hashCode => runtimeType.hashCode;
}
