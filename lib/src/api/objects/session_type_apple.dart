// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on a generic Apple device
@immutable
class SessionTypeApple extends SessionType {
  const SessionTypeApple();

  static const String constructor = 'sessionTypeApple';

  static SessionTypeApple? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeApple();
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
      (other.runtimeType == runtimeType && other is SessionTypeApple);

  @override
  int get hashCode => runtimeType.hashCode;
}
