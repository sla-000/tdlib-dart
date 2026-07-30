import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
