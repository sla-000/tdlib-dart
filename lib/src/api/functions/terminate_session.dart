// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Terminates a session of the current user
/// Returns [Ok]
@immutable
class TerminateSession extends TdFunction {
  const TerminateSession({
    required this.sessionId,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  static const String constructor = 'terminateSession';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TerminateSession &&
          const DeepCollectionEquality().equals(other.sessionId, sessionId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sessionId)]);
}
