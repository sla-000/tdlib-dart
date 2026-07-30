// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on the Brave browser
@immutable
class SessionDeviceTypeBrave extends SessionDeviceType {
  const SessionDeviceTypeBrave();

  static const String constructor = 'sessionDeviceTypeBrave';

  static SessionDeviceTypeBrave? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeBrave();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeBrave);

  @override
  int get hashCode => runtimeType.hashCode;
}
