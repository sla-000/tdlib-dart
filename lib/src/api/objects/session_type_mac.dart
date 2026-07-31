// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on a Mac device
@immutable
class SessionTypeMac extends SessionType {
  const SessionTypeMac();

  static const String constructor = 'sessionTypeMac';

  static SessionTypeMac? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeMac();
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
      (other.runtimeType == runtimeType && other is SessionTypeMac);

  @override
  int get hashCode => runtimeType.hashCode;
}
