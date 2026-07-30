// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes gift types that are accepted by a user
@immutable
class AcceptedGiftTypes extends TdObject {
  const AcceptedGiftTypes({
    required this.unlimitedGifts,
    required this.limitedGifts,
    required this.upgradedGifts,
    required this.giftsFromChannels,
    required this.premiumSubscription,
  });

  /// [unlimitedGifts] True, if unlimited regular gifts are accepted
  final bool unlimitedGifts;

  /// [limitedGifts] True, if limited regular gifts are accepted
  final bool limitedGifts;

  /// [upgradedGifts] True, if upgraded gifts and regular gifts that can be
  /// upgraded for free are accepted
  final bool upgradedGifts;

  /// [giftsFromChannels] True, if gifts from channels are accepted subject to
  /// other restrictions
  final bool giftsFromChannels;

  /// [premiumSubscription] True, if Telegram Premium subscription is accepted
  final bool premiumSubscription;

  static const String constructor = 'acceptedGiftTypes';

  static AcceptedGiftTypes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AcceptedGiftTypes(
      unlimitedGifts: json['unlimited_gifts'] as bool,
      limitedGifts: json['limited_gifts'] as bool,
      upgradedGifts: json['upgraded_gifts'] as bool,
      giftsFromChannels: json['gifts_from_channels'] as bool,
      premiumSubscription: json['premium_subscription'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'unlimited_gifts': unlimitedGifts,
        'limited_gifts': limitedGifts,
        'upgraded_gifts': upgradedGifts,
        'gifts_from_channels': giftsFromChannels,
        'premium_subscription': premiumSubscription,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AcceptedGiftTypes &&
          const DeepCollectionEquality()
              .equals(other.unlimitedGifts, unlimitedGifts) &&
          const DeepCollectionEquality()
              .equals(other.limitedGifts, limitedGifts) &&
          const DeepCollectionEquality()
              .equals(other.upgradedGifts, upgradedGifts) &&
          const DeepCollectionEquality()
              .equals(other.giftsFromChannels, giftsFromChannels) &&
          const DeepCollectionEquality()
              .equals(other.premiumSubscription, premiumSubscription));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(unlimitedGifts),
        const DeepCollectionEquality().hash(limitedGifts),
        const DeepCollectionEquality().hash(upgradedGifts),
        const DeepCollectionEquality().hash(giftsFromChannels),
        const DeepCollectionEquality().hash(premiumSubscription)
      ]);
}
