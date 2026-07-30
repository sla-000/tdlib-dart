// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the type of call server
@immutable
abstract class CallServerType extends TdObject {
  const CallServerType();

  static const String constructor = 'callServerType';

  /// Inherited by:
  /// [CallServerTypeTelegramReflector]
  /// [CallServerTypeWebrtc]
  static CallServerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallServerTypeTelegramReflector.constructor:
        return CallServerTypeTelegramReflector.fromJson(json);
      case CallServerTypeWebrtc.constructor:
        return CallServerTypeWebrtc.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CallServerType);

  @override
  int get hashCode => runtimeType.hashCode;
}
