import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of device from which session was created
@immutable
abstract class SessionDeviceType extends TdObject {
  const SessionDeviceType();

  static const String constructor = 'sessionDeviceType';

  /// Inherited by:
  /// [SessionDeviceTypeAndroid]
  /// [SessionDeviceTypeApple]
  /// [SessionDeviceTypeBrave]
  /// [SessionDeviceTypeChrome]
  /// [SessionDeviceTypeEdge]
  /// [SessionDeviceTypeFirefox]
  /// [SessionDeviceTypeIpad]
  /// [SessionDeviceTypeIphone]
  /// [SessionDeviceTypeLinux]
  /// [SessionDeviceTypeMac]
  /// [SessionDeviceTypeOpera]
  /// [SessionDeviceTypeSafari]
  /// [SessionDeviceTypeUbuntu]
  /// [SessionDeviceTypeUnknown]
  /// [SessionDeviceTypeVivaldi]
  /// [SessionDeviceTypeWindows]
  /// [SessionDeviceTypeXbox]
  static SessionDeviceType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SessionDeviceTypeAndroid.constructor:
        return SessionDeviceTypeAndroid.fromJson(json);
      case SessionDeviceTypeApple.constructor:
        return SessionDeviceTypeApple.fromJson(json);
      case SessionDeviceTypeBrave.constructor:
        return SessionDeviceTypeBrave.fromJson(json);
      case SessionDeviceTypeChrome.constructor:
        return SessionDeviceTypeChrome.fromJson(json);
      case SessionDeviceTypeEdge.constructor:
        return SessionDeviceTypeEdge.fromJson(json);
      case SessionDeviceTypeFirefox.constructor:
        return SessionDeviceTypeFirefox.fromJson(json);
      case SessionDeviceTypeIpad.constructor:
        return SessionDeviceTypeIpad.fromJson(json);
      case SessionDeviceTypeIphone.constructor:
        return SessionDeviceTypeIphone.fromJson(json);
      case SessionDeviceTypeLinux.constructor:
        return SessionDeviceTypeLinux.fromJson(json);
      case SessionDeviceTypeMac.constructor:
        return SessionDeviceTypeMac.fromJson(json);
      case SessionDeviceTypeOpera.constructor:
        return SessionDeviceTypeOpera.fromJson(json);
      case SessionDeviceTypeSafari.constructor:
        return SessionDeviceTypeSafari.fromJson(json);
      case SessionDeviceTypeUbuntu.constructor:
        return SessionDeviceTypeUbuntu.fromJson(json);
      case SessionDeviceTypeUnknown.constructor:
        return SessionDeviceTypeUnknown.fromJson(json);
      case SessionDeviceTypeVivaldi.constructor:
        return SessionDeviceTypeVivaldi.fromJson(json);
      case SessionDeviceTypeWindows.constructor:
        return SessionDeviceTypeWindows.fromJson(json);
      case SessionDeviceTypeXbox.constructor:
        return SessionDeviceTypeXbox.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
