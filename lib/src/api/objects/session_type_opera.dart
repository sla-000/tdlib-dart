// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on the Opera browser
@immutable
class SessionTypeOpera extends SessionType {
  const SessionTypeOpera();

  static const String constructor = 'sessionTypeOpera';

  static SessionTypeOpera? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeOpera();
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
      (other.runtimeType == runtimeType && other is SessionTypeOpera);

  @override
  int get hashCode => runtimeType.hashCode;
}
