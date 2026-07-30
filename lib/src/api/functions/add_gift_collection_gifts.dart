import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds gifts to the beginning of a previously created collection. If the
/// collection is owned by a channel chat, then requires can_post_messages
/// administrator right in the channel chat. Returns the changed collection
/// Returns [GiftCollection]
@immutable
class AddGiftCollectionGifts extends TdFunction {
  const AddGiftCollectionGifts({
    required this.ownerId,
    required this.collectionId,
    required this.receivedGiftIds,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the
  /// collection
  final MessageSender ownerId;

  /// [collectionId] Identifier of the gift collection
  final int collectionId;

  /// [receivedGiftIds] Identifier of the gifts to add to the collection;
  /// 1-getOption("gift_collection_size_max") identifiers. If after addition the
  /// collection has more than getOption("gift_collection_size_max") gifts, then
  /// the last one are removed from the collection
  final List<String> receivedGiftIds;

  static const String constructor = 'addGiftCollectionGifts';

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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
