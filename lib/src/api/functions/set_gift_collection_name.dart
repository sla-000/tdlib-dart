import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes name of a gift collection. If the collection is owned by a channel
/// chat, then requires can_post_messages administrator right in the channel
/// chat. Returns the changed collection
/// Returns [GiftCollection]
@immutable
class SetGiftCollectionName extends TdFunction {
  const SetGiftCollectionName({
    required this.ownerId,
    required this.collectionId,
    required this.name,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the
  /// collection
  final MessageSender ownerId;

  /// [collectionId] Identifier of the gift collection
  final int collectionId;

  /// [name] New name of the collection; 1-12 characters
  final String name;

  static const String constructor = 'setGiftCollectionName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'collection_id': collectionId,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
