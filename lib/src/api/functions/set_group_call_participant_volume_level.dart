// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes volume level of a participant of an active group call; not
/// supported for live stories. If the current user can manage the group call
/// or is the owner of the group call, then the participant's volume level
/// will be changed for all users with the default volume level
/// Returns [Ok]
@immutable
class SetGroupCallParticipantVolumeLevel extends TdFunction {
  const SetGroupCallParticipantVolumeLevel({
    required this.groupCallId,
    required this.participantId,
    required this.volumeLevel,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [volumeLevel] New participant's volume level; 1-20000 in hundreds of
  /// percents
  final int volumeLevel;

  static const String constructor = 'setGroupCallParticipantVolumeLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId.toJson(),
        'volume_level': volumeLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetGroupCallParticipantVolumeLevel &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.participantId, participantId) &&
          const DeepCollectionEquality()
              .equals(other.volumeLevel, volumeLevel));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(participantId),
        const DeepCollectionEquality().hash(volumeLevel)
      ]);
}
