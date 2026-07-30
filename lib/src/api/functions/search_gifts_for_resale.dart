// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns upgraded gifts that can be bought from other owners using
/// sendResoldGift
/// Returns [GiftsForResale]
@immutable
class SearchGiftsForResale extends TdFunction {
  const SearchGiftsForResale({
    required this.giftId,
    required this.order,
    required this.forCrafting,
    required this.forStars,
    required this.attributes,
    required this.offset,
    required this.limit,
  });

  /// [giftId] Identifier of the regular gift that was upgraded to a unique gift
  final int giftId;

  /// [order] Order in which the results will be sorted
  final GiftForResaleOrder order;

  /// [forCrafting] Pass true to get only gifts suitable for crafting
  final bool forCrafting;

  /// [forStars] Pass true to get only gifts that can be bought using Telegram
  /// Stars
  final bool forStars;

  /// [attributes] Attributes used to filter received gifts. If multiple
  /// attributes of the same type are specified, then all of them are allowed.
  /// If none attributes of specific type are specified, then all values for
  /// this attribute type are allowed
  final List<UpgradedGiftAttributeId> attributes;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request with the same order and attributes; use empty string to get the
  /// first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to return
  final int limit;

  static const String constructor = 'searchGiftsForResale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId.toString(),
        'order': order.toJson(),
        'for_crafting': forCrafting,
        'for_stars': forStars,
        'attributes': attributes.map((item) => item.toJson()).toList(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchGiftsForResale &&
          const DeepCollectionEquality().equals(other.giftId, giftId) &&
          const DeepCollectionEquality().equals(other.order, order) &&
          const DeepCollectionEquality()
              .equals(other.forCrafting, forCrafting) &&
          const DeepCollectionEquality().equals(other.forStars, forStars) &&
          const DeepCollectionEquality().equals(other.attributes, attributes) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(giftId),
        const DeepCollectionEquality().hash(order),
        const DeepCollectionEquality().hash(forCrafting),
        const DeepCollectionEquality().hash(forStars),
        const DeepCollectionEquality().hash(attributes),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
