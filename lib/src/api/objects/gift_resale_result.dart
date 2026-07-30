// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of sending a resold gift
@immutable
abstract class GiftResaleResult extends TdObject {
  const GiftResaleResult();

  static const String constructor = 'giftResaleResult';

  /// Inherited by:
  /// [GiftResaleResultOk]
  /// [GiftResaleResultPriceIncreased]
  static GiftResaleResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftResaleResultOk.constructor:
        return GiftResaleResultOk.fromJson(json);
      case GiftResaleResultPriceIncreased.constructor:
        return GiftResaleResultPriceIncreased.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GiftResaleResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
