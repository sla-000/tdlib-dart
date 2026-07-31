// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on an iPhone device
@immutable
class SessionTypeIphone extends SessionType {
  const SessionTypeIphone();

  static const String constructor = 'sessionTypeIphone';

  static SessionTypeIphone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeIphone();
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
      (other.runtimeType == runtimeType && other is SessionTypeIphone);

  @override
  int get hashCode => runtimeType.hashCode;
}
