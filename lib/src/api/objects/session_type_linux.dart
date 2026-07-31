// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on a Linux device
@immutable
class SessionTypeLinux extends SessionType {
  const SessionTypeLinux();

  static const String constructor = 'sessionTypeLinux';

  static SessionTypeLinux? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeLinux();
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
      (other.runtimeType == runtimeType && other is SessionTypeLinux);

  @override
  int get hashCode => runtimeType.hashCode;
}
