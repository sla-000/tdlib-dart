// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a suggested post in Toncoins
@immutable
class SuggestedPostPriceTon extends SuggestedPostPrice {
  const SuggestedPostPriceTon({
    required this.toncoinCentCount,
  });

  /// [toncoinCentCount] The amount of 1/100 of Toncoin expected to be paid for
  /// the post;
  /// getOption("suggested_post_toncoin_cent_count_min")-getOption("suggested_post_toncoin_cent_count_max")
  final int toncoinCentCount;

  static const String constructor = 'suggestedPostPriceTon';

  static SuggestedPostPriceTon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedPostPriceTon(
      toncoinCentCount: (json['toncoin_cent_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'toncoin_cent_count': toncoinCentCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedPostPriceTon &&
          const DeepCollectionEquality()
              .equals(other.toncoinCentCount, toncoinCentCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(toncoinCentCount)]);
}
