// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a round of an auction
@immutable
class AuctionRound extends TdObject {
  const AuctionRound({
    required this.number,
    required this.duration,
    required this.extendTime,
    required this.topWinnerCount,
  });

  /// [number] 1-based number of the round
  final int number;

  /// [duration] Duration of the round, in seconds
  final int duration;

  /// [extendTime] The number of seconds for which the round will be extended if
  /// there are changes in the top winners
  final int extendTime;

  /// [topWinnerCount] The number of top winners who trigger round extension if
  /// changed
  final int topWinnerCount;

  static const String constructor = 'auctionRound';

  static AuctionRound? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionRound(
      number: json['number'] as int,
      duration: json['duration'] as int,
      extendTime: json['extend_time'] as int,
      topWinnerCount: json['top_winner_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'number': number,
        'duration': duration,
        'extend_time': extendTime,
        'top_winner_count': topWinnerCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuctionRound &&
          const DeepCollectionEquality().equals(other.number, number) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.extendTime, extendTime) &&
          const DeepCollectionEquality()
              .equals(other.topWinnerCount, topWinnerCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(number),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(extendTime),
        const DeepCollectionEquality().hash(topWinnerCount)
      ]);
}
