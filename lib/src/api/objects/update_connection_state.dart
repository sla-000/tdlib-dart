// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The connection state has changed. This update must be used only to show a
/// human-readable description of the connection state
@immutable
class UpdateConnectionState extends Update {
  const UpdateConnectionState({
    required this.state,
  });

  /// [state] The new connection state
  final ConnectionState state;

  static const String constructor = 'updateConnectionState';

  static UpdateConnectionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateConnectionState(
      state: ConnectionState.fromJson(json['state'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateConnectionState &&
          const DeepCollectionEquality().equals(other.state, state));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(state)]);
}
