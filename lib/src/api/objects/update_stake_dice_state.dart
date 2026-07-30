// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The stake dice state has changed
@immutable
class UpdateStakeDiceState extends Update {
  const UpdateStakeDiceState({
    required this.state,
  });

  /// [state] The new state. The state can be used only if it was received
  /// recently enough. Otherwise, a new state must be requested using
  /// getStakeDiceState
  final StakeDiceState state;

  static const String constructor = 'updateStakeDiceState';

  static UpdateStakeDiceState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStakeDiceState(
      state: StakeDiceState.fromJson(json['state'] as Map<String, dynamic>?)!,
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
          other is UpdateStakeDiceState &&
          const DeepCollectionEquality().equals(other.state, state));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(state)]);
}
