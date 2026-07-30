import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
