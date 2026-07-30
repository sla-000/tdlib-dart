// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A regular session from a device
@immutable
class SessionTypeDevice extends SessionType {
  const SessionTypeDevice({
    required this.sessionId,
  });

  /// [sessionId] Unique identifier of the session. Use terminateSession to
  /// terminate it or confirmSession to confirm it if it isn't confirmed yet
  final int sessionId;

  static const String constructor = 'sessionTypeDevice';

  static SessionTypeDevice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SessionTypeDevice(
      sessionId: int.tryParse(json['session_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SessionTypeDevice &&
          const DeepCollectionEquality().equals(other.sessionId, sessionId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sessionId)]);
}
