// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes parameters of a unique gift available for resale
@immutable
class GiftResaleParameters extends TdObject {
  const GiftResaleParameters({
    required this.starCount,
    required this.toncoinCentCount,
    required this.toncoinOnly,
  });

  /// [starCount] Resale price of the gift in Telegram Stars
  final int starCount;

  /// [toncoinCentCount] Resale price of the gift in 1/100 of Toncoin
  final int toncoinCentCount;

  /// [toncoinOnly] True, if the gift can be bought only using Toncoins
  final bool toncoinOnly;

  static const String constructor = 'giftResaleParameters';

  static GiftResaleParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleParameters(
      starCount: json['star_count'] as int,
      toncoinCentCount: json['toncoin_cent_count'] as int,
      toncoinOnly: json['toncoin_only'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'toncoin_cent_count': toncoinCentCount,
        'toncoin_only': toncoinOnly,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResaleParameters &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.toncoinCentCount, toncoinCentCount) &&
          const DeepCollectionEquality()
              .equals(other.toncoinOnly, toncoinOnly));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(toncoinCentCount),
        const DeepCollectionEquality().hash(toncoinOnly)
      ]);
}
