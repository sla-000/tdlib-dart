// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on a Linux device
@immutable
class SessionDeviceTypeLinux extends SessionDeviceType {
  const SessionDeviceTypeLinux();

  static const String constructor = 'sessionDeviceTypeLinux';

  static SessionDeviceTypeLinux? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeLinux();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeLinux);

  @override
  int get hashCode => runtimeType.hashCode;
}
