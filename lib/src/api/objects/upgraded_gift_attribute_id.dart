// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains identifier of an upgraded gift attribute to search for
@immutable
abstract class UpgradedGiftAttributeId extends TdObject {
  const UpgradedGiftAttributeId();

  static const String constructor = 'upgradedGiftAttributeId';

  /// Inherited by:
  /// [UpgradedGiftAttributeIdBackdrop]
  /// [UpgradedGiftAttributeIdModel]
  /// [UpgradedGiftAttributeIdSymbol]
  static UpgradedGiftAttributeId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpgradedGiftAttributeIdBackdrop.constructor:
        return UpgradedGiftAttributeIdBackdrop.fromJson(json);
      case UpgradedGiftAttributeIdModel.constructor:
        return UpgradedGiftAttributeIdModel.fromJson(json);
      case UpgradedGiftAttributeIdSymbol.constructor:
        return UpgradedGiftAttributeIdSymbol.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is UpgradedGiftAttributeId);

  @override
  int get hashCode => runtimeType.hashCode;
}
