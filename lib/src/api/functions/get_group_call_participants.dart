// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about participants of a non-joined group call that is
/// not bound to a chat
/// Returns [GroupCallParticipants]
@immutable
class GetGroupCallParticipants extends TdFunction {
  const GetGroupCallParticipants({
    required this.inputGroupCall,
    required this.limit,
  });

  /// [inputGroupCall] The group call which participants will be returned
  final InputGroupCall inputGroupCall;

  /// [limit] The maximum number of participants to return; must be positive
  final int limit;

  static const String constructor = 'getGroupCallParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'input_group_call': inputGroupCall.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGroupCallParticipants &&
          const DeepCollectionEquality()
              .equals(other.inputGroupCall, inputGroupCall) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inputGroupCall),
        const DeepCollectionEquality().hash(limit)
      ]);
}
