// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a resold gift
@immutable
abstract class GiftResalePrice extends TdObject {
  const GiftResalePrice();

  static const String constructor = 'giftResalePrice';

  /// Inherited by:
  /// [GiftResalePriceGram]
  /// [GiftResalePriceStar]
  static GiftResalePrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftResalePriceGram.constructor:
        return GiftResalePriceGram.fromJson(json);
      case GiftResalePriceStar.constructor:
        return GiftResalePriceStar.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GiftResalePrice);

  @override
  int get hashCode => runtimeType.hashCode;
}
