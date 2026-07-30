// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes a gift collection. If the collection is owned by a channel chat,
/// then requires can_post_messages administrator right in the channel chat
/// Returns [Ok]
@immutable
class DeleteGiftCollection extends TdFunction {
  const DeleteGiftCollection({
    required this.ownerId,
    required this.collectionId,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the
  /// collection
  final MessageSender ownerId;

  /// [collectionId] Identifier of the gift collection
  final int collectionId;

  static const String constructor = 'deleteGiftCollection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'collection_id': collectionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteGiftCollection &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality()
              .equals(other.collectionId, collectionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(collectionId)
      ]);
}
