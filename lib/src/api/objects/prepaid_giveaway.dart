// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a prepaid giveaway
@immutable
class PrepaidGiveaway extends TdObject {
  const PrepaidGiveaway({
    required this.id,
    required this.winnerCount,
    required this.prize,
    required this.boostCount,
    required this.paymentDate,
  });

  /// [id] Unique identifier of the prepaid giveaway
  final int id;

  /// [winnerCount] Number of users who will receive giveaway prize
  final int winnerCount;

  /// [prize] Prize of the giveaway
  final GiveawayPrize prize;

  /// [boostCount] The number of boosts received by the chat from the giveaway;
  /// for Telegram Star giveaways only
  final int boostCount;

  /// [paymentDate] Point in time (Unix timestamp) when the giveaway was paid
  final int paymentDate;

  static const String constructor = 'prepaidGiveaway';

  static PrepaidGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PrepaidGiveaway(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      prize: GiveawayPrize.fromJson(json['prize'] as Map<String, dynamic>?)!,
      boostCount: (json['boost_count'] as int?) ?? 0,
      paymentDate: (json['payment_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'winner_count': winnerCount,
        'prize': prize.toJson(),
        'boost_count': boostCount,
        'payment_date': paymentDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PrepaidGiveaway &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.winnerCount, winnerCount) &&
          const DeepCollectionEquality().equals(other.prize, prize) &&
          const DeepCollectionEquality().equals(other.boostCount, boostCount) &&
          const DeepCollectionEquality()
              .equals(other.paymentDate, paymentDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(winnerCount),
        const DeepCollectionEquality().hash(prize),
        const DeepCollectionEquality().hash(boostCount),
        const DeepCollectionEquality().hash(paymentDate)
      ]);
}
