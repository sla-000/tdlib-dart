// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represent auction state of a gift
@immutable
class GiftAuctionState extends TdObject {
  const GiftAuctionState({
    required this.gift,
    required this.state,
  });

  /// [gift] The gift
  final Gift gift;

  /// [state] Auction state of the gift
  final AuctionState state;

  static const String constructor = 'giftAuctionState';

  static GiftAuctionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuctionState(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      state: AuctionState.fromJson(json['state'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftAuctionState &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality().equals(other.state, state));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(state)
      ]);
}
