// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Joins an active video chat. Returns join response payload for tgcalls
/// Returns [Text]
@immutable
class JoinVideoChat extends TdFunction {
  const JoinVideoChat({
    required this.groupCallId,
    this.participantId,
    required this.joinParameters,
    required this.inviteHash,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Identifier of a group call participant, which will be used
  /// to join the call; pass null to join as self
  final MessageSender? participantId;

  /// [joinParameters] Parameters to join the call
  final GroupCallJoinParameters joinParameters;

  /// [inviteHash] Invite hash as received from internalLinkTypeVideoChat
  final String inviteHash;

  static const String constructor = 'joinVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId?.toJson(),
        'join_parameters': joinParameters.toJson(),
        'invite_hash': inviteHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is JoinVideoChat &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.participantId, participantId) &&
          const DeepCollectionEquality()
              .equals(other.joinParameters, joinParameters) &&
          const DeepCollectionEquality().equals(other.inviteHash, inviteHash));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(participantId),
        const DeepCollectionEquality().hash(joinParameters),
        const DeepCollectionEquality().hash(inviteHash)
      ]);
}
