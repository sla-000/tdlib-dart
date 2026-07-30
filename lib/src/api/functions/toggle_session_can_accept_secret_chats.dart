// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether a session can accept incoming secret chats
/// Returns [Ok]
@immutable
class ToggleSessionCanAcceptSecretChats extends TdFunction {
  const ToggleSessionCanAcceptSecretChats({
    required this.sessionId,
    required this.canAcceptSecretChats,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  /// [canAcceptSecretChats] Pass true to allow accepting secret chats by the
  /// session; pass false otherwise
  final bool canAcceptSecretChats;

  static const String constructor = 'toggleSessionCanAcceptSecretChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId.toString(),
        'can_accept_secret_chats': canAcceptSecretChats,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSessionCanAcceptSecretChats &&
          const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
          const DeepCollectionEquality()
              .equals(other.canAcceptSecretChats, canAcceptSecretChats));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sessionId),
        const DeepCollectionEquality().hash(canAcceptSecretChats)
      ]);
}
