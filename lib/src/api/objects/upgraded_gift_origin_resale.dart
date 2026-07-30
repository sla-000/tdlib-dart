// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The gift was bought from another user
@immutable
class UpgradedGiftOriginResale extends UpgradedGiftOrigin {
  const UpgradedGiftOriginResale({
    required this.price,
  });

  /// [price] Price paid for the gift
  final GiftResalePrice price;

  static const String constructor = 'upgradedGiftOriginResale';

  static UpgradedGiftOriginResale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftOriginResale(
      price: GiftResalePrice.fromJson(json['price'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftOriginResale &&
          const DeepCollectionEquality().equals(other.price, price));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(price)]);
}
