// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether a session can accept incoming calls
/// Returns [Ok]
@immutable
class ToggleSessionCanAcceptCalls extends TdFunction {
  const ToggleSessionCanAcceptCalls({
    required this.sessionId,
    required this.canAcceptCalls,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  /// [canAcceptCalls] Pass true to allow accepting incoming calls by the
  /// session; pass false otherwise
  final bool canAcceptCalls;

  static const String constructor = 'toggleSessionCanAcceptCalls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId,
        'can_accept_calls': canAcceptCalls,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSessionCanAcceptCalls &&
          const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
          const DeepCollectionEquality()
              .equals(other.canAcceptCalls, canAcceptCalls));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sessionId),
        const DeepCollectionEquality().hash(canAcceptCalls)
      ]);
}
