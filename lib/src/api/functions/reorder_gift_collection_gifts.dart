// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes order of gifts in a collection. If the collection is owned by a
/// channel chat, then requires can_post_messages administrator right in the
/// channel chat. Returns the changed collection
/// Returns [GiftCollection]
@immutable
class ReorderGiftCollectionGifts extends TdFunction {
  const ReorderGiftCollectionGifts({
    required this.ownerId,
    required this.collectionId,
    required this.receivedGiftIds,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the
  /// collection
  final MessageSender ownerId;

  /// [collectionId] Identifier of the gift collection
  final int collectionId;

  /// [receivedGiftIds] Identifier of the gifts to move to the beginning of the
  /// collection. All other gifts are placed in the current order after the
  /// specified gifts
  final List<String> receivedGiftIds;

  static const String constructor = 'reorderGiftCollectionGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'collection_id': collectionId,
        'received_gift_ids': receivedGiftIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReorderGiftCollectionGifts &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality()
              .equals(other.collectionId, collectionId) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftIds, receivedGiftIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(collectionId),
        const DeepCollectionEquality().hash(receivedGiftIds)
      ]);
}
