// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a resold gift in TON Grams
@immutable
class GiftResalePriceGram extends GiftResalePrice {
  const GiftResalePriceGram({
    required this.gramCentCount,
  });

  /// [gramCentCount] The amount of 1/100 of Gram expected to be paid for the
  /// gift. Must be in the range
  /// getOption("gift_resale_gram_cent_count_min")-getOption("gift_resale_gram_cent_count_max")
  final int gramCentCount;

  static const String constructor = 'giftResalePriceGram';

  static GiftResalePriceGram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResalePriceGram(
      gramCentCount: (json['gram_cent_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gram_cent_count': gramCentCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResalePriceGram &&
          const DeepCollectionEquality()
              .equals(other.gramCentCount, gramCentCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(gramCentCount)]);
}
