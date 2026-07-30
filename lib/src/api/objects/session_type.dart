import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
