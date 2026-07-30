// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an auction on which a gift can be purchased
@immutable
class GiftAuction extends TdObject {
  const GiftAuction({
    required this.id,
    required this.giftsPerRound,
    required this.startDate,
  });

  /// [id] Identifier of the auction
  final String id;

  /// [giftsPerRound] Number of gifts distributed in each round
  final int giftsPerRound;

  /// [startDate] Point in time (Unix timestamp) when the auction will start
  final int startDate;

  static const String constructor = 'giftAuction';

  static GiftAuction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuction(
      id: (json['id'] as String?) ?? '',
      giftsPerRound: (json['gifts_per_round'] as int?) ?? 0,
      startDate: (json['start_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'gifts_per_round': giftsPerRound,
        'start_date': startDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftAuction &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.giftsPerRound, giftsPerRound) &&
          const DeepCollectionEquality().equals(other.startDate, startDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(giftsPerRound),
        const DeepCollectionEquality().hash(startDate)
      ]);
}
