// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes parameters of a unique gift available for resale
@immutable
class GiftResaleParameters extends TdObject {
  const GiftResaleParameters({
    required this.starCount,
    required this.gramCentCount,
    required this.gramOnly,
  });

  /// [starCount] Resale price of the gift in Telegram Stars
  final int starCount;

  /// [gramCentCount] Resale price of the gift in 1/100 of TON Gram
  final int gramCentCount;

  /// [gramOnly] True, if the gift can be bought only using Grams
  final bool gramOnly;

  static const String constructor = 'giftResaleParameters';

  static GiftResaleParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleParameters(
      starCount: json['star_count'] as int,
      gramCentCount: json['gram_cent_count'] as int,
      gramOnly: json['gram_only'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'gram_cent_count': gramCentCount,
        'gram_only': gramOnly,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResaleParameters &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.gramCentCount, gramCentCount) &&
          const DeepCollectionEquality().equals(other.gramOnly, gramOnly));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(gramCentCount),
        const DeepCollectionEquality().hash(gramOnly)
      ]);
}
