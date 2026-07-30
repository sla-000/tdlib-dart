import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns gifts received by the given user or chat
/// Returns [ReceivedGifts]
@immutable
class GetReceivedGifts extends TdFunction {
  const GetReceivedGifts({
    this.businessConnectionId,
    required this.ownerId,
    required this.collectionId,
    required this.excludeUnsaved,
    required this.excludeSaved,
    required this.excludeUnlimited,
    required this.excludeUpgradable,
    required this.excludeNonUpgradable,
    required this.excludeUpgraded,
    required this.excludeWithoutColors,
    required this.excludeHosted,
    required this.sortByPrice,
    required this.offset,
    required this.limit,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [ownerId] Identifier of the gift receiver
  final MessageSender ownerId;

  /// [collectionId] Pass collection identifier to get gifts only from the
  /// specified collection; pass 0 to get gifts regardless of collections
  final int collectionId;

  /// [excludeUnsaved] Pass true to exclude gifts that aren't saved to the
  /// chat's profile page. Always true for gifts received by other users and
  /// channel chats without can_post_messages administrator right
  final bool excludeUnsaved;

  /// [excludeSaved] Pass true to exclude gifts that are saved to the chat's
  /// profile page. Always false for gifts received by other users and channel
  /// chats without can_post_messages administrator right
  final bool excludeSaved;

  /// [excludeUnlimited] Pass true to exclude gifts that can be purchased
  /// unlimited number of times
  final bool excludeUnlimited;

  /// [excludeUpgradable] Pass true to exclude gifts that can be purchased
  /// limited number of times and can be upgraded
  final bool excludeUpgradable;

  /// [excludeNonUpgradable] Pass true to exclude gifts that can be purchased
  /// limited number of times and can't be upgraded
  final bool excludeNonUpgradable;

  /// [excludeUpgraded] Pass true to exclude upgraded gifts
  final bool excludeUpgraded;

  /// [excludeWithoutColors] Pass true to exclude gifts that can't be used in
  /// setUpgradedGiftColors
  final bool excludeWithoutColors;

  /// [excludeHosted] Pass true to exclude gifts that are just hosted and are
  /// not owned by the owner
  final bool excludeHosted;

  /// [sortByPrice] Pass true to sort results by gift price instead of send date
  final bool sortByPrice;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to be returned; must be positive and
  /// can't be greater than 100. For optimal performance, the number of returned
  /// objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'getReceivedGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'owner_id': ownerId.toJson(),
        'collection_id': collectionId,
        'exclude_unsaved': excludeUnsaved,
        'exclude_saved': excludeSaved,
        'exclude_unlimited': excludeUnlimited,
        'exclude_upgradable': excludeUpgradable,
        'exclude_non_upgradable': excludeNonUpgradable,
        'exclude_upgraded': excludeUpgraded,
        'exclude_without_colors': excludeWithoutColors,
        'exclude_hosted': excludeHosted,
        'sort_by_price': sortByPrice,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
