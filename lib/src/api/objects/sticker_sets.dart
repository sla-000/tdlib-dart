// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of sticker sets
@immutable
class StickerSets extends TdObject {
  const StickerSets({
    required this.totalCount,
    required this.sets,
  });

  /// [totalCount] Approximate total number of sticker sets found
  final int totalCount;

  /// [sets] List of sticker sets
  final List<StickerSetInfo> sets;

  static const String constructor = 'stickerSets';

  static StickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSets(
      totalCount: (json['total_count'] as int?) ?? 0,
      sets: List<StickerSetInfo>.from(((json['sets'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => StickerSetInfo.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'sets': sets.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StickerSets &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.sets, sets));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(sets)
      ]);
}
