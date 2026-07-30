import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes order of gift collections. If the collections are owned by a
/// channel chat, then requires can_post_messages administrator right in the
/// channel chat
/// Returns [Ok]
@immutable
class ReorderGiftCollections extends TdFunction {
  const ReorderGiftCollections({
    required this.ownerId,
    required this.collectionIds,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the
  /// collection
  final MessageSender ownerId;

  /// [collectionIds] New order of gift collections
  final List<int> collectionIds;

  static const String constructor = 'reorderGiftCollections';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'collection_ids': collectionIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
