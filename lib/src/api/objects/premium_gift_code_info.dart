// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Premium gift code
@immutable
class PremiumGiftCodeInfo extends TdObject {
  const PremiumGiftCodeInfo({
    this.creatorId,
    required this.creationDate,
    required this.isFromGiveaway,
    required this.giveawayMessageId,
    required this.monthCount,
    required this.dayCount,
    required this.userId,
    required this.useDate,
  });

  /// [creatorId] Identifier of a chat or a user who created the gift code; may
  /// be null if unknown. If null and the code is from messagePremiumGiftCode
  /// message, then creator_id from the message can be used
  final MessageSender? creatorId;

  /// [creationDate] Point in time (Unix timestamp) when the code was created
  final int creationDate;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message in
  /// the creator_id chat; may be 0 or an identifier of a deleted message
  final int giveawayMessageId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 if the number of months isn't integer
  final int monthCount;

  /// [dayCount] Number of days the Telegram Premium subscription will be active
  /// after code activation
  final int dayCount;

  /// [userId] Identifier of a user for which the code was created; 0 if none
  final int userId;

  /// [useDate] Point in time (Unix timestamp) when the code was activated; 0 if
  /// none
  final int useDate;

  static const String constructor = 'premiumGiftCodeInfo';

  static PremiumGiftCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftCodeInfo(
      creatorId:
          MessageSender.fromJson(json['creator_id'] as Map<String, dynamic>?),
      creationDate: (json['creation_date'] as int?) ?? 0,
      isFromGiveaway: (json['is_from_giveaway'] as bool?) ?? false,
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
      dayCount: (json['day_count'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      useDate: (json['use_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creator_id': creatorId?.toJson(),
        'creation_date': creationDate,
        'is_from_giveaway': isFromGiveaway,
        'giveaway_message_id': giveawayMessageId,
        'month_count': monthCount,
        'day_count': dayCount,
        'user_id': userId,
        'use_date': useDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumGiftCodeInfo &&
          const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
          const DeepCollectionEquality()
              .equals(other.creationDate, creationDate) &&
          const DeepCollectionEquality()
              .equals(other.isFromGiveaway, isFromGiveaway) &&
          const DeepCollectionEquality()
              .equals(other.giveawayMessageId, giveawayMessageId) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality().equals(other.dayCount, dayCount) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.useDate, useDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(creatorId),
        const DeepCollectionEquality().hash(creationDate),
        const DeepCollectionEquality().hash(isFromGiveaway),
        const DeepCollectionEquality().hash(giveawayMessageId),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(dayCount),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(useDate)
      ]);
}
