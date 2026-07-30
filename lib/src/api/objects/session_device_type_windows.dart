import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on a Windows device
@immutable
class SessionDeviceTypeWindows extends SessionDeviceType {
  const SessionDeviceTypeWindows();

  static const String constructor = 'sessionDeviceTypeWindows';

  static SessionDeviceTypeWindows? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeWindows();
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
