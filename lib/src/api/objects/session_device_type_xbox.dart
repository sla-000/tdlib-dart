// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an Xbox console
@immutable
class SessionDeviceTypeXbox extends SessionDeviceType {
  const SessionDeviceTypeXbox();

  static const String constructor = 'sessionDeviceTypeXbox';

  static SessionDeviceTypeXbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeXbox();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeXbox);

  @override
  int get hashCode => runtimeType.hashCode;
}
