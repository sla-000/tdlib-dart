// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a gift auction. Call getGiftAuctionState with the
/// given auction identifier to process the link
@immutable
class InternalLinkTypeGiftAuction extends InternalLinkType {
  const InternalLinkTypeGiftAuction({
    required this.auctionId,
  });

  /// [auctionId] Unique identifier of the auction
  final String auctionId;

  static const String constructor = 'internalLinkTypeGiftAuction';

  static InternalLinkTypeGiftAuction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGiftAuction(
      auctionId: (json['auction_id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'auction_id': auctionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeGiftAuction &&
          const DeepCollectionEquality().equals(other.auctionId, auctionId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(auctionId)]);
}
