// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an iPad device
@immutable
class SessionDeviceTypeIpad extends SessionDeviceType {
  const SessionDeviceTypeIpad();

  static const String constructor = 'sessionDeviceTypeIpad';

  static SessionDeviceTypeIpad? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeIpad();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeIpad);

  @override
  int get hashCode => runtimeType.hashCode;
}
