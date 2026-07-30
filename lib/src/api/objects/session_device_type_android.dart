import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on an Android device
@immutable
class SessionDeviceTypeAndroid extends SessionDeviceType {
  const SessionDeviceTypeAndroid();

  static const String constructor = 'sessionDeviceTypeAndroid';

  static SessionDeviceTypeAndroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeAndroid();
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
