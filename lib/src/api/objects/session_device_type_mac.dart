// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on a Mac device
@immutable
class SessionDeviceTypeMac extends SessionDeviceType {
  const SessionDeviceTypeMac();

  static const String constructor = 'sessionDeviceTypeMac';

  static SessionDeviceTypeMac? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeMac();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeMac);

  @override
  int get hashCode => runtimeType.hashCode;
}
