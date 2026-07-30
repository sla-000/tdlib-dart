// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session is running on the Edge browser
@immutable
class SessionDeviceTypeEdge extends SessionDeviceType {
  const SessionDeviceTypeEdge();

  static const String constructor = 'sessionDeviceTypeEdge';

  static SessionDeviceTypeEdge? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeEdge();
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
      (other.runtimeType == runtimeType && other is SessionDeviceTypeEdge);

  @override
  int get hashCode => runtimeType.hashCode;
}
