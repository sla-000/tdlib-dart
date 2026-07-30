// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video chat participant volume level was changed
@immutable
class ChatEventVideoChatParticipantVolumeLevelChanged extends ChatEventAction {
  const ChatEventVideoChatParticipantVolumeLevelChanged({
    required this.participantId,
    required this.volumeLevel,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  static const String constructor =
      'chatEventVideoChatParticipantVolumeLevelChanged';

  static ChatEventVideoChatParticipantVolumeLevelChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantVolumeLevelChanged(
      participantId: MessageSender.fromJson(
          json['participant_id'] as Map<String, dynamic>?)!,
      volumeLevel: (json['volume_level'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'participant_id': participantId.toJson(),
        'volume_level': volumeLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventVideoChatParticipantVolumeLevelChanged &&
          const DeepCollectionEquality()
              .equals(other.participantId, participantId) &&
          const DeepCollectionEquality()
              .equals(other.volumeLevel, volumeLevel));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(participantId),
        const DeepCollectionEquality().hash(volumeLevel)
      ]);
}
