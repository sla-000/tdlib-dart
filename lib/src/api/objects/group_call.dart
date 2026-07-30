// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a group call
@immutable
class GroupCall extends TdObject {
  const GroupCall({
    required this.id,
    required this.uniqueId,
    required this.title,
    required this.inviteLink,
    required this.paidMessageStarCount,
    required this.scheduledStartDate,
    required this.enabledStartNotification,
    required this.isActive,
    required this.isVideoChat,
    required this.isLiveStory,
    required this.isRtmpStream,
    required this.isJoined,
    required this.needRejoin,
    required this.isOwned,
    required this.canBeManaged,
    required this.participantCount,
    required this.hasHiddenListeners,
    required this.loadedAllParticipants,
    this.messageSenderId,
    required this.recentSpeakers,
    required this.isMyVideoEnabled,
    required this.isMyVideoPaused,
    required this.canEnableVideo,
    required this.muteNewParticipants,
    required this.canToggleMuteNewParticipants,
    required this.canSendMessages,
    required this.areMessagesAllowed,
    required this.canToggleAreMessagesAllowed,
    required this.canDeleteMessages,
    required this.recordDuration,
    required this.isVideoRecorded,
    required this.duration,
  });

  /// [id] Group call identifier
  final int id;

  /// [uniqueId] Persistent unique group call identifier
  final int uniqueId;

  /// [title] Group call title; for video chats only
  final String title;

  /// [inviteLink] Invite link for the group call; for group calls that aren't
  /// bound to a chat. For video chats call getVideoChatInviteLink to get the
  /// link. For live stories in chats with username call getInternalLink with
  /// internalLinkTypeLiveStory
  final String inviteLink;

  /// [paidMessageStarCount] The minimum number of Telegram Stars that must be
  /// paid by general participant for each sent message to the call; for live
  /// stories only
  final int paidMessageStarCount;

  /// [scheduledStartDate] Point in time (Unix timestamp) when the group call is
  /// expected to be started by an administrator; 0 if it is already active or
  /// was ended; for video chats only
  final int scheduledStartDate;

  /// [enabledStartNotification] True, if the group call is scheduled and the
  /// current user will receive a notification when the group call starts; for
  /// video chats only
  final bool enabledStartNotification;

  /// [isActive] True, if the call is active
  final bool isActive;

  /// [isVideoChat] True, if the call is bound to a chat
  final bool isVideoChat;

  /// [isLiveStory] True, if the call is a live story of a chat
  final bool isLiveStory;

  /// [isRtmpStream] True, if the call is an RTMP stream instead of an ordinary
  /// video chat; for video chats and live stories only
  final bool isRtmpStream;

  /// [isJoined] True, if the call is joined
  final bool isJoined;

  /// [needRejoin] True, if user was kicked from the call because of network
  /// loss and the call needs to be rejoined
  final bool needRejoin;

  /// [isOwned] True, if the user is the owner of the call and can end the call,
  /// change volume level of other users, or ban users there; for group calls
  /// that aren't bound to a chat
  final bool isOwned;

  /// [canBeManaged] True, if the current user can manage the group call; for
  /// video chats and live stories only
  final bool canBeManaged;

  /// [participantCount] Number of participants in the group call
  final int participantCount;

  /// [hasHiddenListeners] True, if group call participants, which are muted,
  /// aren't returned in participant list; for video chats only
  final bool hasHiddenListeners;

  /// [loadedAllParticipants] True, if all group call participants are loaded
  final bool loadedAllParticipants;

  /// [messageSenderId] Message sender chosen to send messages to the group
  /// call; for live stories only; may be null if the call isn't a live story
  final MessageSender? messageSenderId;

  /// [recentSpeakers] At most 3 recently speaking users in the group call
  final List<GroupCallRecentSpeaker> recentSpeakers;

  /// [isMyVideoEnabled] True, if the current user's video is enabled
  final bool isMyVideoEnabled;

  /// [isMyVideoPaused] True, if the current user's video is paused
  final bool isMyVideoPaused;

  /// [canEnableVideo] True, if the current user can broadcast video or share
  /// screen
  final bool canEnableVideo;

  /// [muteNewParticipants] True, if only group call administrators can unmute
  /// new participants; for video chats only
  final bool muteNewParticipants;

  /// [canToggleMuteNewParticipants] True, if the current user can enable or
  /// disable mute_new_participants setting; for video chats only
  final bool canToggleMuteNewParticipants;

  /// [canSendMessages] True, if the current user can send messages to the group
  /// call
  final bool canSendMessages;

  /// [areMessagesAllowed] True, if sending of messages is allowed in the group
  /// call
  final bool areMessagesAllowed;

  /// [canToggleAreMessagesAllowed] True, if the current user can enable or
  /// disable sending of messages in the group call
  final bool canToggleAreMessagesAllowed;

  /// [canDeleteMessages] True, if the user can delete messages in the group
  /// call
  final bool canDeleteMessages;

  /// [recordDuration] Duration of the ongoing group call recording, in seconds;
  /// 0 if none. An updateGroupCall update is not triggered when value of this
  /// field changes, but the same recording goes on
  final int recordDuration;

  /// [isVideoRecorded] True, if a video file is being recorded for the call
  final bool isVideoRecorded;

  /// [duration] Call duration, in seconds; for ended calls only
  final int duration;

  static const String constructor = 'groupCall';

  static GroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCall(
      id: (json['id'] as int?) ?? 0,
      uniqueId: (json['unique_id'] is int
              ? json['unique_id'] as int
              : int.tryParse(json['unique_id']?.toString() ?? '')) ??
          0,
      title: (json['title'] as String?) ?? '',
      inviteLink: (json['invite_link'] as String?) ?? '',
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
      scheduledStartDate: (json['scheduled_start_date'] as int?) ?? 0,
      enabledStartNotification:
          (json['enabled_start_notification'] as bool?) ?? false,
      isActive: (json['is_active'] as bool?) ?? false,
      isVideoChat: (json['is_video_chat'] as bool?) ?? false,
      isLiveStory: (json['is_live_story'] as bool?) ?? false,
      isRtmpStream: (json['is_rtmp_stream'] as bool?) ?? false,
      isJoined: (json['is_joined'] as bool?) ?? false,
      needRejoin: (json['need_rejoin'] as bool?) ?? false,
      isOwned: (json['is_owned'] as bool?) ?? false,
      canBeManaged: (json['can_be_managed'] as bool?) ?? false,
      participantCount: (json['participant_count'] as int?) ?? 0,
      hasHiddenListeners: (json['has_hidden_listeners'] as bool?) ?? false,
      loadedAllParticipants:
          (json['loaded_all_participants'] as bool?) ?? false,
      messageSenderId: MessageSender.fromJson(
          json['message_sender_id'] as Map<String, dynamic>?),
      recentSpeakers: List<GroupCallRecentSpeaker>.from(
          ((json['recent_speakers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GroupCallRecentSpeaker.fromJson(
                  item as Map<String, dynamic>?))
              .toList()),
      isMyVideoEnabled: (json['is_my_video_enabled'] as bool?) ?? false,
      isMyVideoPaused: (json['is_my_video_paused'] as bool?) ?? false,
      canEnableVideo: (json['can_enable_video'] as bool?) ?? false,
      muteNewParticipants: (json['mute_new_participants'] as bool?) ?? false,
      canToggleMuteNewParticipants:
          (json['can_toggle_mute_new_participants'] as bool?) ?? false,
      canSendMessages: (json['can_send_messages'] as bool?) ?? false,
      areMessagesAllowed: (json['are_messages_allowed'] as bool?) ?? false,
      canToggleAreMessagesAllowed:
          (json['can_toggle_are_messages_allowed'] as bool?) ?? false,
      canDeleteMessages: (json['can_delete_messages'] as bool?) ?? false,
      recordDuration: (json['record_duration'] as int?) ?? 0,
      isVideoRecorded: (json['is_video_recorded'] as bool?) ?? false,
      duration: (json['duration'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'unique_id': uniqueId.toString(),
        'title': title,
        'invite_link': inviteLink,
        'paid_message_star_count': paidMessageStarCount,
        'scheduled_start_date': scheduledStartDate,
        'enabled_start_notification': enabledStartNotification,
        'is_active': isActive,
        'is_video_chat': isVideoChat,
        'is_live_story': isLiveStory,
        'is_rtmp_stream': isRtmpStream,
        'is_joined': isJoined,
        'need_rejoin': needRejoin,
        'is_owned': isOwned,
        'can_be_managed': canBeManaged,
        'participant_count': participantCount,
        'has_hidden_listeners': hasHiddenListeners,
        'loaded_all_participants': loadedAllParticipants,
        'message_sender_id': messageSenderId?.toJson(),
        'recent_speakers': recentSpeakers.map((item) => item.toJson()).toList(),
        'is_my_video_enabled': isMyVideoEnabled,
        'is_my_video_paused': isMyVideoPaused,
        'can_enable_video': canEnableVideo,
        'mute_new_participants': muteNewParticipants,
        'can_toggle_mute_new_participants': canToggleMuteNewParticipants,
        'can_send_messages': canSendMessages,
        'are_messages_allowed': areMessagesAllowed,
        'can_toggle_are_messages_allowed': canToggleAreMessagesAllowed,
        'can_delete_messages': canDeleteMessages,
        'record_duration': recordDuration,
        'is_video_recorded': isVideoRecorded,
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GroupCall &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.uniqueId, uniqueId) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount) &&
          const DeepCollectionEquality()
              .equals(other.scheduledStartDate, scheduledStartDate) &&
          const DeepCollectionEquality().equals(
              other.enabledStartNotification, enabledStartNotification) &&
          const DeepCollectionEquality().equals(other.isActive, isActive) &&
          const DeepCollectionEquality()
              .equals(other.isVideoChat, isVideoChat) &&
          const DeepCollectionEquality()
              .equals(other.isLiveStory, isLiveStory) &&
          const DeepCollectionEquality()
              .equals(other.isRtmpStream, isRtmpStream) &&
          const DeepCollectionEquality().equals(other.isJoined, isJoined) &&
          const DeepCollectionEquality().equals(other.needRejoin, needRejoin) &&
          const DeepCollectionEquality().equals(other.isOwned, isOwned) &&
          const DeepCollectionEquality()
              .equals(other.canBeManaged, canBeManaged) &&
          const DeepCollectionEquality()
              .equals(other.participantCount, participantCount) &&
          const DeepCollectionEquality()
              .equals(other.hasHiddenListeners, hasHiddenListeners) &&
          const DeepCollectionEquality()
              .equals(other.loadedAllParticipants, loadedAllParticipants) &&
          const DeepCollectionEquality()
              .equals(other.messageSenderId, messageSenderId) &&
          const DeepCollectionEquality()
              .equals(other.recentSpeakers, recentSpeakers) &&
          const DeepCollectionEquality()
              .equals(other.isMyVideoEnabled, isMyVideoEnabled) &&
          const DeepCollectionEquality()
              .equals(other.isMyVideoPaused, isMyVideoPaused) &&
          const DeepCollectionEquality()
              .equals(other.canEnableVideo, canEnableVideo) &&
          const DeepCollectionEquality()
              .equals(other.muteNewParticipants, muteNewParticipants) &&
          const DeepCollectionEquality().equals(
              other.canToggleMuteNewParticipants,
              canToggleMuteNewParticipants) &&
          const DeepCollectionEquality()
              .equals(other.canSendMessages, canSendMessages) &&
          const DeepCollectionEquality()
              .equals(other.areMessagesAllowed, areMessagesAllowed) &&
          const DeepCollectionEquality().equals(
              other.canToggleAreMessagesAllowed, canToggleAreMessagesAllowed) &&
          const DeepCollectionEquality()
              .equals(other.canDeleteMessages, canDeleteMessages) &&
          const DeepCollectionEquality()
              .equals(other.recordDuration, recordDuration) &&
          const DeepCollectionEquality()
              .equals(other.isVideoRecorded, isVideoRecorded) &&
          const DeepCollectionEquality().equals(other.duration, duration));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(uniqueId),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(inviteLink),
        const DeepCollectionEquality().hash(paidMessageStarCount),
        const DeepCollectionEquality().hash(scheduledStartDate),
        const DeepCollectionEquality().hash(enabledStartNotification),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(isVideoChat),
        const DeepCollectionEquality().hash(isLiveStory),
        const DeepCollectionEquality().hash(isRtmpStream),
        const DeepCollectionEquality().hash(isJoined),
        const DeepCollectionEquality().hash(needRejoin),
        const DeepCollectionEquality().hash(isOwned),
        const DeepCollectionEquality().hash(canBeManaged),
        const DeepCollectionEquality().hash(participantCount),
        const DeepCollectionEquality().hash(hasHiddenListeners),
        const DeepCollectionEquality().hash(loadedAllParticipants),
        const DeepCollectionEquality().hash(messageSenderId),
        const DeepCollectionEquality().hash(recentSpeakers),
        const DeepCollectionEquality().hash(isMyVideoEnabled),
        const DeepCollectionEquality().hash(isMyVideoPaused),
        const DeepCollectionEquality().hash(canEnableVideo),
        const DeepCollectionEquality().hash(muteNewParticipants),
        const DeepCollectionEquality().hash(canToggleMuteNewParticipants),
        const DeepCollectionEquality().hash(canSendMessages),
        const DeepCollectionEquality().hash(areMessagesAllowed),
        const DeepCollectionEquality().hash(canToggleAreMessagesAllowed),
        const DeepCollectionEquality().hash(canDeleteMessages),
        const DeepCollectionEquality().hash(recordDuration),
        const DeepCollectionEquality().hash(isVideoRecorded),
        const DeepCollectionEquality().hash(duration)
      ]);
}
