// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a finished auction
@immutable
class AuctionStateFinished extends AuctionState {
  const AuctionStateFinished({
    required this.startDate,
    required this.endDate,
    required this.averagePrice,
    required this.acquiredItemCount,
    required this.telegramListedItemCount,
    required this.fragmentListedItemCount,
    required this.fragmentUrl,
  });

  /// [startDate] Point in time (Unix timestamp) when the auction started
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the auction will be ended
  final int endDate;

  /// [averagePrice] Average price of bought items in Telegram Stars
  final int averagePrice;

  /// [acquiredItemCount] The number of items that were purchased by the current
  /// user on the auction
  final int acquiredItemCount;

  /// [telegramListedItemCount] Number of items from the auction being resold on
  /// Telegram
  final int telegramListedItemCount;

  /// [fragmentListedItemCount] Number of items from the auction being resold on
  /// Fragment
  final int fragmentListedItemCount;

  /// [fragmentUrl] The HTTPS link to the Fragment for the resold items; may be
  /// empty if there are no such items being sold on Fragment
  final String fragmentUrl;

  static const String constructor = 'auctionStateFinished';

  static AuctionStateFinished? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionStateFinished(
      startDate: json['start_date'] as int,
      endDate: json['end_date'] as int,
      averagePrice: json['average_price'] as int,
      acquiredItemCount: json['acquired_item_count'] as int,
      telegramListedItemCount: json['telegram_listed_item_count'] as int,
      fragmentListedItemCount: json['fragment_listed_item_count'] as int,
      fragmentUrl: json['fragment_url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_date': startDate,
        'end_date': endDate,
        'average_price': averagePrice,
        'acquired_item_count': acquiredItemCount,
        'telegram_listed_item_count': telegramListedItemCount,
        'fragment_listed_item_count': fragmentListedItemCount,
        'fragment_url': fragmentUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuctionStateFinished &&
          const DeepCollectionEquality().equals(other.startDate, startDate) &&
          const DeepCollectionEquality().equals(other.endDate, endDate) &&
          const DeepCollectionEquality()
              .equals(other.averagePrice, averagePrice) &&
          const DeepCollectionEquality()
              .equals(other.acquiredItemCount, acquiredItemCount) &&
          const DeepCollectionEquality()
              .equals(other.telegramListedItemCount, telegramListedItemCount) &&
          const DeepCollectionEquality()
              .equals(other.fragmentListedItemCount, fragmentListedItemCount) &&
          const DeepCollectionEquality()
              .equals(other.fragmentUrl, fragmentUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(averagePrice),
        const DeepCollectionEquality().hash(acquiredItemCount),
        const DeepCollectionEquality().hash(telegramListedItemCount),
        const DeepCollectionEquality().hash(fragmentListedItemCount),
        const DeepCollectionEquality().hash(fragmentUrl)
      ]);
}
