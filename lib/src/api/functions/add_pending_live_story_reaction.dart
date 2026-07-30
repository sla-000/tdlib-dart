// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds pending paid reaction in a live story group call. Can't be used in
/// live stories posted by the current user. Call
/// commitPendingLiveStoryReactions or removePendingLiveStoryReactions to
/// actually send all pending reactions when the undo timer is over or abort
/// the sending
/// Returns [Ok]
@immutable
class AddPendingLiveStoryReaction extends TdFunction {
  const AddPendingLiveStoryReaction({
    required this.groupCallId,
    required this.starCount,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [starCount] Number of Telegram Stars to be used for the reaction. The
  /// total number of pending paid reactions must not exceed
  /// getOption("paid_group_call_message_star_count_max")
  final int starCount;

  static const String constructor = 'addPendingLiveStoryReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddPendingLiveStoryReaction &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
