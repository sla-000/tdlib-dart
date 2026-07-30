import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a gift collection. Call searchPublicChat with the
/// given username, then call getReceivedGifts with the received gift owner
/// identifier and the given collection identifier, then show the collection
/// if received
@immutable
class InternalLinkTypeGiftCollection extends InternalLinkType {
  const InternalLinkTypeGiftCollection({
    required this.giftOwnerUsername,
    required this.collectionId,
  });

  /// [giftOwnerUsername] Username of the owner of the gift collection
  final String giftOwnerUsername;

  /// [collectionId] Gift collection identifier
  final int collectionId;

  static const String constructor = 'internalLinkTypeGiftCollection';

  static InternalLinkTypeGiftCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGiftCollection(
      giftOwnerUsername: json['gift_owner_username'] as String,
      collectionId: json['collection_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_owner_username': giftOwnerUsername,
        'collection_id': collectionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
