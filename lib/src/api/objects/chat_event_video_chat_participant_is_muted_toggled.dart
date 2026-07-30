// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video chat participant was muted or unmuted
@immutable
class ChatEventVideoChatParticipantIsMutedToggled extends ChatEventAction {
  const ChatEventVideoChatParticipantIsMutedToggled({
    required this.participantId,
    required this.isMuted,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  static const String constructor =
      'chatEventVideoChatParticipantIsMutedToggled';

  static ChatEventVideoChatParticipantIsMutedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantIsMutedToggled(
      participantId: MessageSender.fromJson(
          json['participant_id'] as Map<String, dynamic>?)!,
      isMuted: (json['is_muted'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'participant_id': participantId.toJson(),
        'is_muted': isMuted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventVideoChatParticipantIsMutedToggled &&
          const DeepCollectionEquality()
              .equals(other.participantId, participantId) &&
          const DeepCollectionEquality().equals(other.isMuted, isMuted));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(participantId),
        const DeepCollectionEquality().hash(isMuted)
      ]);
}
