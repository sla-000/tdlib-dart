import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Joins a group call of an active live story. Returns join response payload
/// for tgcalls
/// Returns [Text]
@immutable
class JoinLiveStory extends TdFunction {
  const JoinLiveStory({
    required this.groupCallId,
    required this.joinParameters,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  static const String constructor = 'joinLiveStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'join_parameters': joinParameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
