// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns auction state for a gift
/// Returns [GiftAuctionState]
@immutable
class GetGiftAuctionState extends TdFunction {
  const GetGiftAuctionState({
    required this.auctionId,
  });

  /// [auctionId] Unique identifier of the auction
  final String auctionId;

  static const String constructor = 'getGiftAuctionState';

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
          other is GetGiftAuctionState &&
          const DeepCollectionEquality().equals(other.auctionId, auctionId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(auctionId)]);
}
