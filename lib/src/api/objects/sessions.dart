// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of sessions
@immutable
class Sessions extends TdObject {
  const Sessions({
    required this.sessions,
    required this.inactiveSessionTtlDays,
  });

  /// [sessions] List of sessions
  final List<Session> sessions;

  /// [inactiveSessionTtlDays] Number of days of inactivity before sessions will
  /// automatically be terminated; 1-366 days
  final int inactiveSessionTtlDays;

  static const String constructor = 'sessions';

  static Sessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sessions(
      sessions: List<Session>.from(
          ((json['sessions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Session.fromJson(item as Map<String, dynamic>?))
              .toList()),
      inactiveSessionTtlDays: (json['inactive_session_ttl_days'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sessions': sessions.map((item) => item.toJson()).toList(),
        'inactive_session_ttl_days': inactiveSessionTtlDays,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Sessions &&
          const DeepCollectionEquality().equals(other.sessions, sessions) &&
          const DeepCollectionEquality()
              .equals(other.inactiveSessionTtlDays, inactiveSessionTtlDays));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sessions),
        const DeepCollectionEquality().hash(inactiveSessionTtlDays)
      ]);
}
