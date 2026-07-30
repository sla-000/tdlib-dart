import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on the Chrome browser
@immutable
class SessionDeviceTypeChrome extends SessionDeviceType {
  const SessionDeviceTypeChrome();

  static const String constructor = 'sessionDeviceTypeChrome';

  static SessionDeviceTypeChrome? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeChrome();
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
