// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of trending sticker sets
@immutable
class TrendingStickerSets extends TdObject {
  const TrendingStickerSets({
    required this.totalCount,
    required this.sets,
    required this.isPremium,
  });

  /// [totalCount] Approximate total number of trending sticker sets
  final int totalCount;

  /// [sets] List of trending sticker sets
  final List<StickerSetInfo> sets;

  /// [isPremium] True, if the list contains sticker sets with premium stickers
  final bool isPremium;

  static const String constructor = 'trendingStickerSets';

  static TrendingStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TrendingStickerSets(
      totalCount: json['total_count'] as int,
      sets: List<StickerSetInfo>.from(
          ((json['sets'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StickerSetInfo.fromJson(item))
              .toList()),
      isPremium: json['is_premium'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'sets': sets.map((item) => item.toJson()).toList(),
        'is_premium': isPremium,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TrendingStickerSets &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.sets, sets) &&
          const DeepCollectionEquality().equals(other.isPremium, isPremium));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(sets),
        const DeepCollectionEquality().hash(isPremium)
      ]);
}
