// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an unknown type of device
@immutable
class SessionDeviceTypeUnknown extends SessionDeviceType {
  const SessionDeviceTypeUnknown();

  static const String constructor = 'sessionDeviceTypeUnknown';

  static SessionDeviceTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeUnknown();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeUnknown);

  @override
  int get hashCode => runtimeType.hashCode;
}
