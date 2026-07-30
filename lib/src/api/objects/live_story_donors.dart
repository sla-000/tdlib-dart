// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of users and chats that spend most money on paid messages
/// and reactions in a live story
@immutable
class LiveStoryDonors extends TdObject {
  const LiveStoryDonors({
    required this.totalStarCount,
    required this.topDonors,
  });

  /// [totalStarCount] Total amount of spend Telegram Stars
  final int totalStarCount;

  /// [topDonors] List of top donors in the live story
  final List<PaidReactor> topDonors;

  static const String constructor = 'liveStoryDonors';

  static LiveStoryDonors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LiveStoryDonors(
      totalStarCount: json['total_star_count'] as int,
      topDonors: List<PaidReactor>.from(
          ((json['top_donors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidReactor.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_star_count': totalStarCount,
        'top_donors': topDonors.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LiveStoryDonors &&
          const DeepCollectionEquality()
              .equals(other.totalStarCount, totalStarCount) &&
          const DeepCollectionEquality().equals(other.topDonors, topDonors));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalStarCount),
        const DeepCollectionEquality().hash(topDonors)
      ]);
}
