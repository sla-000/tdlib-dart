// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a resold gift in Toncoins
@immutable
class GiftResalePriceTon extends GiftResalePrice {
  const GiftResalePriceTon({
    required this.toncoinCentCount,
  });

  /// [toncoinCentCount] The amount of 1/100 of Toncoin expected to be paid for
  /// the gift. Must be in the range
  /// getOption("gift_resale_toncoin_cent_count_min")-getOption("gift_resale_toncoin_cent_count_max")
  final int toncoinCentCount;

  static const String constructor = 'giftResalePriceTon';

  static GiftResalePriceTon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResalePriceTon(
      toncoinCentCount: json['toncoin_cent_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'toncoin_cent_count': toncoinCentCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResalePriceTon &&
          const DeepCollectionEquality()
              .equals(other.toncoinCentCount, toncoinCentCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(toncoinCentCount)]);
}
