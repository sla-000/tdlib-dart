// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Invites a user to an active group call; for group calls not bound to a
/// chat only. Sends a service message of the type messageGroupCall. The group
/// call can have at most getOption("group_call_participant_count_max")
/// participants
/// Returns [InviteGroupCallParticipantResult]
@immutable
class InviteGroupCallParticipant extends TdFunction {
  const InviteGroupCallParticipant({
    required this.groupCallId,
    required this.userId,
    required this.isVideo,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userId] User identifier
  final int userId;

  /// [isVideo] Pass true if the group call is a video call
  final bool isVideo;

  static const String constructor = 'inviteGroupCallParticipant';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'user_id': userId,
        'is_video': isVideo,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InviteGroupCallParticipant &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.isVideo, isVideo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(isVideo)
      ]);
}
