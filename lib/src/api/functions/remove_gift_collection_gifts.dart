// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes gifts from a collection. If the collection is owned by a channel
/// chat, then requires can_post_messages administrator right in the channel
/// chat. Returns the changed collection
/// Returns [GiftCollection]
@immutable
class RemoveGiftCollectionGifts extends TdFunction {
  const RemoveGiftCollectionGifts({
    required this.ownerId,
    required this.collectionId,
    required this.receivedGiftIds,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the
  /// collection
  final MessageSender ownerId;

  /// [collectionId] Identifier of the gift collection
  final int collectionId;

  /// [receivedGiftIds] Identifier of the gifts to remove from the collection
  final List<String> receivedGiftIds;

  static const String constructor = 'removeGiftCollectionGifts';

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
          other is RemoveGiftCollectionGifts &&
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
