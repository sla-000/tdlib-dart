// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Joins a regular group call that is not bound to a chat
/// Returns [GroupCallInfo]
@immutable
class JoinGroupCall extends TdFunction {
  const JoinGroupCall({
    required this.inputGroupCall,
    required this.joinParameters,
  });

  /// [inputGroupCall] The group call to join
  final InputGroupCall inputGroupCall;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  static const String constructor = 'joinGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'input_group_call': inputGroupCall.toJson(),
        'join_parameters': joinParameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is JoinGroupCall &&
          const DeepCollectionEquality()
              .equals(other.inputGroupCall, inputGroupCall) &&
          const DeepCollectionEquality()
              .equals(other.joinParameters, joinParameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inputGroupCall),
        const DeepCollectionEquality().hash(joinParameters)
      ]);
}
