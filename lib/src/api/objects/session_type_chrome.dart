// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on the Chrome browser
@immutable
class SessionTypeChrome extends SessionType {
  const SessionTypeChrome();

  static const String constructor = 'sessionTypeChrome';

  static SessionTypeChrome? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeChrome();
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
      (other.runtimeType == runtimeType && other is SessionTypeChrome);

  @override
  int get hashCode => runtimeType.hashCode;
}
