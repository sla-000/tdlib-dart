// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of user session
@immutable
abstract class SessionType extends TdObject {
  const SessionType();

  static const String constructor = 'sessionType';

  /// Inherited by:
  /// [SessionTypeConnectedBot]
  /// [SessionTypeDevice]
  static SessionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SessionTypeConnectedBot.constructor:
        return SessionTypeConnectedBot.fromJson(json);
      case SessionTypeDevice.constructor:
        return SessionTypeDevice.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SessionType);

  @override
  int get hashCode => runtimeType.hashCode;
}
