// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an iPhone device
@immutable
class SessionDeviceTypeIphone extends SessionDeviceType {
  const SessionDeviceTypeIphone();

  static const String constructor = 'sessionDeviceTypeIphone';

  static SessionDeviceTypeIphone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeIphone();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeIphone);

  @override
  int get hashCode => runtimeType.hashCode;
}
