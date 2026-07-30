// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents the type of network
@immutable
abstract class NetworkType extends TdObject {
  const NetworkType();

  static const String constructor = 'networkType';

  /// Inherited by:
  /// [NetworkTypeMobileRoaming]
  /// [NetworkTypeMobile]
  /// [NetworkTypeNone]
  /// [NetworkTypeOther]
  /// [NetworkTypeWiFi]
  static NetworkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NetworkTypeMobile.constructor:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.constructor:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeNone.constructor:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeOther.constructor:
        return NetworkTypeOther.fromJson(json);
      case NetworkTypeWiFi.constructor:
        return NetworkTypeWiFi.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is NetworkType);

  @override
  int get hashCode => runtimeType.hashCode;
}
