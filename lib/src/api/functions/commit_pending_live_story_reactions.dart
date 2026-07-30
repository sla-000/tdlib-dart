// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Applies all pending paid reactions in a live story group call
/// Returns [Ok]
@immutable
class CommitPendingLiveStoryReactions extends TdFunction {
  const CommitPendingLiveStoryReactions({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'commitPendingLiveStoryReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommitPendingLiveStoryReactions &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(groupCallId)]);
}
