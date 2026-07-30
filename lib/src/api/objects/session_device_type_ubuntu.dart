import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
