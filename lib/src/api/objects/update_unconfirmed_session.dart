// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The first unconfirmed session has changed
@immutable
class UpdateUnconfirmedSession extends Update {
  const UpdateUnconfirmedSession({
    this.session,
    required this.unconfirmedSessionCount,
  });

  /// [session] The unconfirmed session; may be null if none
  final UnconfirmedSession? session;

  /// [unconfirmedSessionCount] The total number of unconfirmed sessions
  final int unconfirmedSessionCount;

  static const String constructor = 'updateUnconfirmedSession';

  static UpdateUnconfirmedSession? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnconfirmedSession(
      session:
          UnconfirmedSession.fromJson(json['session'] as Map<String, dynamic>?),
      unconfirmedSessionCount: (json['unconfirmed_session_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session': session?.toJson(),
        'unconfirmed_session_count': unconfirmedSessionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateUnconfirmedSession &&
          const DeepCollectionEquality().equals(other.session, session) &&
          const DeepCollectionEquality()
              .equals(other.unconfirmedSessionCount, unconfirmedSessionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(session),
        const DeepCollectionEquality().hash(unconfirmedSessionCount)
      ]);
}
