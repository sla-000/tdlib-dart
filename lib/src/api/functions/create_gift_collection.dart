// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a collection from gifts on the current user's or a channel's
/// profile page; requires can_post_messages administrator right in the
/// channel chat. An owner can have up to
/// getOption("gift_collection_count_max") gift collections. The new
/// collection will be added to the end of the gift collection list of the
/// owner. Returns the created collection
/// Returns [GiftCollection]
@immutable
class CreateGiftCollection extends TdFunction {
  const CreateGiftCollection({
    required this.ownerId,
    required this.name,
    required this.receivedGiftIds,
  });

  /// [ownerId] Identifier of the user or the channel chat that received the
  /// gifts
  final MessageSender ownerId;

  /// [name] Name of the collection; 1-12 characters
  final String name;

  /// [receivedGiftIds] Identifier of the gifts to add to the collection;
  /// 0-getOption("gift_collection_size_max") identifiers
  final List<String> receivedGiftIds;

  static const String constructor = 'createGiftCollection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'name': name,
        'received_gift_ids': receivedGiftIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateGiftCollection &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftIds, receivedGiftIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(receivedGiftIds)
      ]);
}
