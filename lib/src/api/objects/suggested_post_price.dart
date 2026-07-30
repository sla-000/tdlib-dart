// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a suggested post
@immutable
abstract class SuggestedPostPrice extends TdObject {
  const SuggestedPostPrice();

  static const String constructor = 'suggestedPostPrice';

  /// Inherited by:
  /// [SuggestedPostPriceGram]
  /// [SuggestedPostPriceStar]
  static SuggestedPostPrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostPriceGram.constructor:
        return SuggestedPostPriceGram.fromJson(json);
      case SuggestedPostPriceStar.constructor:
        return SuggestedPostPriceStar.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SuggestedPostPrice);

  @override
  int get hashCode => runtimeType.hashCode;
}
