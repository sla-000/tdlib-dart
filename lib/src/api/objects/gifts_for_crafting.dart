import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of gifts received by a user or a chat
@immutable
class GiftsForCrafting extends TdObject {
  const GiftsForCrafting({
    required this.totalCount,
    required this.gifts,
    required this.attributePersistenceProbabilities,
    required this.nextOffset,
  });

  /// [totalCount] The total number of received gifts
  final int totalCount;

  /// [gifts] The list of gifts
  final List<ReceivedGift> gifts;

  /// [attributePersistenceProbabilities] The 4 objects that describe
  /// probabilities of the crafted gift to have the backdrop or symbol of one of
  /// the original gifts for the cases when 1, 2, 3 or 4 gifts are used in the
  /// craft correspondingly
  final List<AttributeCraftPersistenceProbability>
      attributePersistenceProbabilities;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'giftsForCrafting';

  static GiftsForCrafting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftsForCrafting(
      totalCount: json['total_count'] as int,
      gifts: List<ReceivedGift>.from(
          ((json['gifts'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ReceivedGift.fromJson(item))
              .toList()),
      attributePersistenceProbabilities:
          List<AttributeCraftPersistenceProbability>.from(
              ((json['attribute_persistence_probabilities']
                          as List<dynamic>?) ??
                      <dynamic>[])
                  .map((item) =>
                      AttributeCraftPersistenceProbability.fromJson(item))
                  .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'gifts': gifts.map((item) => item.toJson()).toList(),
        'attribute_persistence_probabilities': attributePersistenceProbabilities
            .map((item) => item.toJson())
            .toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
