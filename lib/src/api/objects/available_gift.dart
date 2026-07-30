// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a gift that is available for purchase
@immutable
class AvailableGift extends TdObject {
  const AvailableGift({
    required this.gift,
    required this.resaleCount,
    required this.minResaleStarCount,
    required this.title,
  });

  /// [gift] The gift
  final Gift gift;

  /// [resaleCount] Number of gifts that are available for resale
  final int resaleCount;

  /// [minResaleStarCount] The minimum price for the gifts available for resale
  /// in Telegram Star equivalent; 0 if there are no such gifts
  final int minResaleStarCount;

  /// [title] The title of the upgraded gift; empty if the gift isn't available
  /// for resale
  final String title;

  static const String constructor = 'availableGift';

  static AvailableGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableGift(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      resaleCount: (json['resale_count'] as int?) ?? 0,
      minResaleStarCount: (json['min_resale_star_count'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'resale_count': resaleCount,
        'min_resale_star_count': minResaleStarCount,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AvailableGift &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality()
              .equals(other.resaleCount, resaleCount) &&
          const DeepCollectionEquality()
              .equals(other.minResaleStarCount, minResaleStarCount) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(resaleCount),
        const DeepCollectionEquality().hash(minResaleStarCount),
        const DeepCollectionEquality().hash(title)
      ]);
}
