// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on a Windows device
@immutable
class SessionDeviceTypeWindows extends SessionDeviceType {
  const SessionDeviceTypeWindows();

  static const String constructor = 'sessionDeviceTypeWindows';

  static SessionDeviceTypeWindows? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeWindows();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeWindows);

  @override
  int get hashCode => runtimeType.hashCode;
}
