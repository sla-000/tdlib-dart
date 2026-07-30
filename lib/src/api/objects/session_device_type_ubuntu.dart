// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an Ubuntu device
@immutable
class SessionDeviceTypeUbuntu extends SessionDeviceType {
  const SessionDeviceTypeUbuntu();

  static const String constructor = 'sessionDeviceTypeUbuntu';

  static SessionDeviceTypeUbuntu? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeUbuntu();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeUbuntu);

  @override
  int get hashCode => runtimeType.hashCode;
}
