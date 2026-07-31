// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an Android device
@immutable
class SessionTypeAndroid extends SessionType {
  const SessionTypeAndroid();

  static const String constructor = 'sessionTypeAndroid';

  static SessionTypeAndroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeAndroid();
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
      (other.runtimeType == runtimeType && other is SessionTypeAndroid);

  @override
  int get hashCode => runtimeType.hashCode;
}
