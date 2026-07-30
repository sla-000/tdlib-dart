// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The giveaway sends Telegram Premium subscriptions to the winners
@immutable
class GiveawayPrizePremium extends GiveawayPrize {
  const GiveawayPrizePremium({
    required this.monthCount,
  });

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  static const String constructor = 'giveawayPrizePremium';

  static GiveawayPrizePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayPrizePremium(
      monthCount: json['month_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiveawayPrizePremium &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(monthCount)]);
}
