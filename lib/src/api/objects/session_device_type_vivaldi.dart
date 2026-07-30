import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on the Vivaldi browser
@immutable
class SessionDeviceTypeVivaldi extends SessionDeviceType {
  const SessionDeviceTypeVivaldi();

  static const String constructor = 'sessionDeviceTypeVivaldi';

  static SessionDeviceTypeVivaldi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeVivaldi();
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
