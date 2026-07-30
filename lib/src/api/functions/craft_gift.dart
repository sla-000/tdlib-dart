// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Crafts a new gift from other gifts that will be permanently lost
/// Returns [CraftGiftResult]
@immutable
class CraftGift extends TdFunction {
  const CraftGift({
    required this.receivedGiftIds,
  });

  /// [receivedGiftIds] Identifier of the gifts to use for crafting. In the case
  /// of a successful craft, the resulting gift will have the number of the
  /// first gift. Consequently, the first gift must not have been withdrawn to
  /// the TON blockchain as an NFT and must have an empty gift_address
  final List<String> receivedGiftIds;

  static const String constructor = 'craftGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_ids': receivedGiftIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CraftGift &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftIds, receivedGiftIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(receivedGiftIds)]);
}
