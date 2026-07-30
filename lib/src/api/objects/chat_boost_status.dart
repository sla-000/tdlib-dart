// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes current boost status of a chat
@immutable
class ChatBoostStatus extends TdObject {
  const ChatBoostStatus({
    required this.boostUrl,
    required this.appliedSlotIds,
    required this.level,
    required this.giftCodeBoostCount,
    required this.boostCount,
    required this.currentLevelBoostCount,
    required this.nextLevelBoostCount,
    required this.premiumMemberCount,
    required this.premiumMemberPercentage,
    required this.prepaidGiveaways,
  });

  /// [boostUrl] An HTTP URL, which can be used to boost the chat
  final String boostUrl;

  /// [appliedSlotIds] Identifiers of boost slots of the current user applied to
  /// the chat
  final List<int> appliedSlotIds;

  /// [level] Current boost level of the chat
  final int level;

  /// [giftCodeBoostCount] The number of boosts received by the chat from
  /// created Telegram Premium gift codes and giveaways; always 0 if the current
  /// user isn't an administrator in the chat
  final int giftCodeBoostCount;

  /// [boostCount] The number of boosts received by the chat
  final int boostCount;

  /// [currentLevelBoostCount] The number of boosts added to reach the current
  /// level
  final int currentLevelBoostCount;

  /// [nextLevelBoostCount] The number of boosts needed to reach the next level;
  /// 0 if the next level isn't available
  final int nextLevelBoostCount;

  /// [premiumMemberCount] Approximate number of Telegram Premium subscribers
  /// joined the chat; always 0 if the current user isn't an administrator in
  /// the chat
  final int premiumMemberCount;

  /// [premiumMemberPercentage] A percentage of Telegram Premium subscribers
  /// joined the chat; always 0 if the current user isn't an administrator in
  /// the chat
  final double premiumMemberPercentage;

  /// [prepaidGiveaways] The list of prepaid giveaways available for the chat;
  /// only for chat administrators
  final List<PrepaidGiveaway> prepaidGiveaways;

  static const String constructor = 'chatBoostStatus';

  static ChatBoostStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostStatus(
      boostUrl: json['boost_url'] as String,
      appliedSlotIds: List<int>.from(
          ((json['applied_slot_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      level: json['level'] as int,
      giftCodeBoostCount: json['gift_code_boost_count'] as int,
      boostCount: json['boost_count'] as int,
      currentLevelBoostCount: json['current_level_boost_count'] as int,
      nextLevelBoostCount: json['next_level_boost_count'] as int,
      premiumMemberCount: json['premium_member_count'] as int,
      premiumMemberPercentage:
          (json['premium_member_percentage'] as num).toDouble(),
      prepaidGiveaways: List<PrepaidGiveaway>.from(
          ((json['prepaid_giveaways'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PrepaidGiveaway.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boost_url': boostUrl,
        'applied_slot_ids': appliedSlotIds.map((item) => item).toList(),
        'level': level,
        'gift_code_boost_count': giftCodeBoostCount,
        'boost_count': boostCount,
        'current_level_boost_count': currentLevelBoostCount,
        'next_level_boost_count': nextLevelBoostCount,
        'premium_member_count': premiumMemberCount,
        'premium_member_percentage': premiumMemberPercentage,
        'prepaid_giveaways':
            prepaidGiveaways.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoostStatus &&
          const DeepCollectionEquality().equals(other.boostUrl, boostUrl) &&
          const DeepCollectionEquality()
              .equals(other.appliedSlotIds, appliedSlotIds) &&
          const DeepCollectionEquality().equals(other.level, level) &&
          const DeepCollectionEquality()
              .equals(other.giftCodeBoostCount, giftCodeBoostCount) &&
          const DeepCollectionEquality().equals(other.boostCount, boostCount) &&
          const DeepCollectionEquality()
              .equals(other.currentLevelBoostCount, currentLevelBoostCount) &&
          const DeepCollectionEquality()
              .equals(other.nextLevelBoostCount, nextLevelBoostCount) &&
          const DeepCollectionEquality()
              .equals(other.premiumMemberCount, premiumMemberCount) &&
          const DeepCollectionEquality()
              .equals(other.premiumMemberPercentage, premiumMemberPercentage) &&
          const DeepCollectionEquality()
              .equals(other.prepaidGiveaways, prepaidGiveaways));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(boostUrl),
        const DeepCollectionEquality().hash(appliedSlotIds),
        const DeepCollectionEquality().hash(level),
        const DeepCollectionEquality().hash(giftCodeBoostCount),
        const DeepCollectionEquality().hash(boostCount),
        const DeepCollectionEquality().hash(currentLevelBoostCount),
        const DeepCollectionEquality().hash(nextLevelBoostCount),
        const DeepCollectionEquality().hash(premiumMemberCount),
        const DeepCollectionEquality().hash(premiumMemberPercentage),
        const DeepCollectionEquality().hash(prepaidGiveaways)
      ]);
}
