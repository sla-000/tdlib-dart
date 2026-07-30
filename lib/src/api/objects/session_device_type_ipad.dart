import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
