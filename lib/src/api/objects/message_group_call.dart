// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with information about a group call not bound to a chat. If the
/// message is incoming, the call isn't active, isn't missed, and has no
/// duration, and getOption("can_accept_calls") is true, then incoming call
/// screen must be shown to the user. Use getGroupCallParticipants to show
/// current group call participants on the screen. Use joinGroupCall to accept
/// the call or declineGroupCallInvitation to decline it. If the call become
/// active or missed, then the call screen must be hidden
@immutable
class MessageGroupCall extends MessageContent {
  const MessageGroupCall({
    required this.uniqueId,
    required this.isActive,
    required this.wasMissed,
    required this.isVideo,
    required this.duration,
    required this.otherParticipantIds,
  });

  /// [uniqueId] Persistent unique group call identifier
  final int uniqueId;

  /// [isActive] True, if the call is active, i.e. the called user joined the
  /// call
  final bool isActive;

  /// [wasMissed] True, if the called user missed or declined the call
  final bool wasMissed;

  /// [isVideo] True, if the call is a video call
  final bool isVideo;

  /// [duration] Call duration, in seconds; for left calls only
  final int duration;

  /// [otherParticipantIds] Identifiers of some other call participants
  final List<MessageSender> otherParticipantIds;

  static const String constructor = 'messageGroupCall';

  static MessageGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGroupCall(
      uniqueId: (json['unique_id'] is int
              ? json['unique_id'] as int
              : int.tryParse(json['unique_id']?.toString() ?? '')) ??
          0,
      isActive: (json['is_active'] as bool?) ?? false,
      wasMissed: (json['was_missed'] as bool?) ?? false,
      isVideo: (json['is_video'] as bool?) ?? false,
      duration: (json['duration'] as int?) ?? 0,
      otherParticipantIds: List<MessageSender>.from(
          ((json['other_participant_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  MessageSender.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'unique_id': uniqueId.toString(),
        'is_active': isActive,
        'was_missed': wasMissed,
        'is_video': isVideo,
        'duration': duration,
        'other_participant_ids':
            otherParticipantIds.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGroupCall &&
          const DeepCollectionEquality().equals(other.uniqueId, uniqueId) &&
          const DeepCollectionEquality().equals(other.isActive, isActive) &&
          const DeepCollectionEquality().equals(other.wasMissed, wasMissed) &&
          const DeepCollectionEquality().equals(other.isVideo, isVideo) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality()
              .equals(other.otherParticipantIds, otherParticipantIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(uniqueId),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(wasMissed),
        const DeepCollectionEquality().hash(isVideo),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(otherParticipantIds)
      ]);
}
