// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a collectible item that can be purchased at https://fragment.com
@immutable
abstract class CollectibleItemType extends TdObject {
  const CollectibleItemType();

  static const String constructor = 'collectibleItemType';

  /// Inherited by:
  /// [CollectibleItemTypePhoneNumber]
  /// [CollectibleItemTypeUsername]
  static CollectibleItemType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CollectibleItemTypePhoneNumber.constructor:
        return CollectibleItemTypePhoneNumber.fromJson(json);
      case CollectibleItemTypeUsername.constructor:
        return CollectibleItemTypeUsername.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CollectibleItemType);

  @override
  int get hashCode => runtimeType.hashCode;
}
