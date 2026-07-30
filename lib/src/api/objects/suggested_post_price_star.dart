// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a suggested post in Telegram Stars
@immutable
class SuggestedPostPriceStar extends SuggestedPostPrice {
  const SuggestedPostPriceStar({
    required this.starCount,
  });

  /// [starCount] The Telegram Star amount expected to be paid for the post;
  /// getOption("suggested_post_star_count_min")-getOption("suggested_post_star_count_max")
  final int starCount;

  static const String constructor = 'suggestedPostPriceStar';

  static SuggestedPostPriceStar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedPostPriceStar(
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestedPostPriceStar &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(starCount)]);
}
