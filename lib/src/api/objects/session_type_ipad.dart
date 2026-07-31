// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an iPad device
@immutable
class SessionTypeIpad extends SessionType {
  const SessionTypeIpad();

  static const String constructor = 'sessionTypeIpad';

  static SessionTypeIpad? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeIpad();
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
      (other.runtimeType == runtimeType && other is SessionTypeIpad);

  @override
  int get hashCode => runtimeType.hashCode;
}
