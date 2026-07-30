import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
