// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on the Opera browser
@immutable
class SessionDeviceTypeOpera extends SessionDeviceType {
  const SessionDeviceTypeOpera();

  static const String constructor = 'sessionDeviceTypeOpera';

  static SessionDeviceTypeOpera? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeOpera();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SessionDeviceTypeOpera);

  @override
  int get hashCode => runtimeType.hashCode;
}
