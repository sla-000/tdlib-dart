// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Invites users to an active video chat. Sends a service message of the type
/// messageInviteVideoChatParticipants to the chat bound to the group call
/// Returns [Ok]
@immutable
class InviteVideoChatParticipants extends TdFunction {
  const InviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  static const String constructor = 'inviteVideoChatParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InviteVideoChatParticipants &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.userIds, userIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(userIds)
      ]);
}
