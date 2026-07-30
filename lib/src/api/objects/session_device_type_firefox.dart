// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on the Firefox browser
@immutable
class SessionDeviceTypeFirefox extends SessionDeviceType {
  const SessionDeviceTypeFirefox();

  static const String constructor = 'sessionDeviceTypeFirefox';

  static SessionDeviceTypeFirefox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeFirefox();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeFirefox);

  @override
  int get hashCode => runtimeType.hashCode;
}
