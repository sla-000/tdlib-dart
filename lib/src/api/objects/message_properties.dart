// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains properties of a message and describes actions that can be done
/// with the message right now
@immutable
class MessageProperties extends TdObject {
  const MessageProperties({
    required this.canAddOffer,
    required this.canAddTasks,
    required this.canBeApproved,
    required this.canBeCopied,
    required this.canBeCopiedToSecretChat,
    required this.canBeDeclined,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBePaid,
    required this.canBePinned,
    required this.canBeReplied,
    required this.canBeRepliedInAnotherChat,
    required this.canBeSaved,
    required this.canBeSharedInStory,
    required this.canDeleteReactions,
    required this.canEditMedia,
    required this.canEditSchedulingState,
    required this.canEditSuggestedPostInfo,
    required this.canGetAuthor,
    required this.canGetEmbeddingCode,
    required this.canGetLink,
    required this.canGetMediaTimestampLinks,
    required this.canGetMessageThread,
    required this.canGetPollVoteStatistics,
    required this.canGetReadDate,
    required this.canGetStatistics,
    required this.canGetVideoAdvertisements,
    required this.canGetViewers,
    required this.canMarkTasksAsDone,
    required this.canRecognizeSpeech,
    required this.canReportChat,
    required this.canReportReactions,
    required this.canReportSupergroupSpam,
    required this.canSetFactCheck,
    required this.hasProtectedContentByCurrentUser,
    required this.hasProtectedContentByOtherUser,
    required this.needShowStatistics,
  });

  /// [canAddOffer] True, if an offer can be added to the message using addOffer
  final bool canAddOffer;

  /// [canAddTasks] True, if tasks can be added to the message's checklist using
  /// addChecklistTasks if the current user has Telegram Premium subscription
  final bool canAddTasks;

  /// [canBeApproved] True, if the message is a suggested post that can be
  /// approved by the user using approveSuggestedPost
  final bool canBeApproved;

  /// [canBeCopied] True, if content of the message can be copied using
  /// inputMessageForwarded or forwardMessages with copy options
  final bool canBeCopied;

  /// [canBeCopiedToSecretChat] True, if content of the message can be copied to
  /// a secret chat using inputMessageForwarded or forwardMessages with copy
  /// options
  final bool canBeCopiedToSecretChat;

  /// [canBeDeclined] True, if the message is a suggested post that can be
  /// declined by the user using declineSuggestedPost
  final bool canBeDeclined;

  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for the
  /// current user while other users will continue to see it using the method
  /// deleteMessages with revoke == false
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all
  /// users using the method deleteMessages with revoke == true
  final bool canBeDeletedForAllUsers;

  /// [canBeEdited] True, if the message can be edited using the methods
  /// editMessageText, editMessageCaption, or editMessageReplyMarkup. For live
  /// location, poll, and checklist messages this fields shows whether
  /// editMessageLiveLocation, stopPoll, or editMessageChecklist respectively
  /// can be used with this message
  final bool canBeEdited;

  /// [canBeForwarded] True, if the message can be forwarded using
  /// inputMessageForwarded or forwardMessages without copy options
  final bool canBeForwarded;

  /// [canBePaid] True, if the message can be paid using inputInvoiceMessage
  final bool canBePaid;

  /// [canBePinned] True, if the message can be pinned or unpinned in the chat
  /// using pinChatMessage or unpinChatMessage
  final bool canBePinned;

  /// [canBeReplied] True, if the message can be replied in the same chat and
  /// forum topic using inputMessageReplyToMessage
  final bool canBeReplied;

  /// [canBeRepliedInAnotherChat] True, if the message can be replied in another
  /// chat or forum topic using inputMessageReplyToExternalMessage
  final bool canBeRepliedInAnotherChat;

  /// [canBeSaved] True, if content of the message can be saved locally
  final bool canBeSaved;

  /// [canBeSharedInStory] True, if the message can be shared in a story using
  /// inputStoryAreaTypeMessage
  final bool canBeSharedInStory;

  /// [canDeleteReactions] True, if the user can delete reactions of other users
  /// in the message using the method deleteMessageReactionsFromSender
  final bool canDeleteReactions;

  /// [canEditMedia] True, if the message can be edited using the method
  /// editMessageMedia
  final bool canEditMedia;

  /// [canEditSchedulingState] True, if scheduling state of the message can be
  /// edited
  final bool canEditSchedulingState;

  /// [canEditSuggestedPostInfo] True, if another price or post send time can be
  /// suggested using addOffer
  final bool canEditSuggestedPostInfo;

  /// [canGetAuthor] True, if author of the message sent on behalf of a chat can
  /// be received through getMessageAuthor
  final bool canGetAuthor;

  /// [canGetEmbeddingCode] True, if code for message embedding can be received
  /// using getMessageEmbeddingCode
  final bool canGetEmbeddingCode;

  /// [canGetLink] True, if a link can be generated for the message using
  /// getMessageLink
  final bool canGetLink;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be
  /// generated for media timestamp entities in the message text, caption or
  /// link preview description using getMessageLink
  final bool canGetMediaTimestampLinks;

  /// [canGetMessageThread] True, if information about the message thread is
  /// available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// [canGetPollVoteStatistics] True, if the message is a poll and vote
  /// statistics are available through getPollVoteStatistics
  final bool canGetPollVoteStatistics;

  /// [canGetReadDate] True, if read date of the message can be received through
  /// getMessageReadDate
  final bool canGetReadDate;

  /// [canGetStatistics] True, if message statistics are available through
  /// getMessageStatistics and message forwards can be received using
  /// getMessagePublicForwards
  final bool canGetStatistics;

  /// [canGetVideoAdvertisements] True, if advertisements for video of the
  /// message can be received through getVideoMessageAdvertisements
  final bool canGetVideoAdvertisements;

  /// [canGetViewers] True, if chat members already viewed the message can be
  /// received through getMessageViewers
  final bool canGetViewers;

  /// [canMarkTasksAsDone] True, if tasks can be marked as done or not done in
  /// the message's checklist using markChecklistTasksAsDone if the current user
  /// has Telegram Premium subscription
  final bool canMarkTasksAsDone;

  /// [canRecognizeSpeech] True, if speech can be recognized for the message
  /// through recognizeSpeech
  final bool canRecognizeSpeech;

  /// [canReportChat] True, if the message can be reported using reportChat
  final bool canReportChat;

  /// [canReportReactions] True, if reactions on the message can be reported
  /// through reportMessageReactions
  final bool canReportReactions;

  /// [canReportSupergroupSpam] True, if the message can be reported using
  /// reportSupergroupSpam
  final bool canReportSupergroupSpam;

  /// [canSetFactCheck] True, if fact check for the message can be changed
  /// through setMessageFactCheck
  final bool canSetFactCheck;

  /// [hasProtectedContentByCurrentUser] True, if content of the message can't
  /// be saved locally, because it is protected by the current user; if true,
  /// then can_be_saved is false
  final bool hasProtectedContentByCurrentUser;

  /// [hasProtectedContentByOtherUser] True, if content of the message can't be
  /// saved locally, because it is protected by the other user; if true, then
  /// can_be_saved is false
  final bool hasProtectedContentByOtherUser;

  /// [needShowStatistics] True, if message statistics must be available from
  /// context menu of the message
  final bool needShowStatistics;

  static const String constructor = 'messageProperties';

  static MessageProperties? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageProperties(
      canAddOffer: json['can_add_offer'] as bool,
      canAddTasks: json['can_add_tasks'] as bool,
      canBeApproved: json['can_be_approved'] as bool,
      canBeCopied: json['can_be_copied'] as bool,
      canBeCopiedToSecretChat: json['can_be_copied_to_secret_chat'] as bool,
      canBeDeclined: json['can_be_declined'] as bool,
      canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'] as bool,
      canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'] as bool,
      canBeEdited: json['can_be_edited'] as bool,
      canBeForwarded: json['can_be_forwarded'] as bool,
      canBePaid: json['can_be_paid'] as bool,
      canBePinned: json['can_be_pinned'] as bool,
      canBeReplied: json['can_be_replied'] as bool,
      canBeRepliedInAnotherChat: json['can_be_replied_in_another_chat'] as bool,
      canBeSaved: json['can_be_saved'] as bool,
      canBeSharedInStory: json['can_be_shared_in_story'] as bool,
      canDeleteReactions: json['can_delete_reactions'] as bool,
      canEditMedia: json['can_edit_media'] as bool,
      canEditSchedulingState: json['can_edit_scheduling_state'] as bool,
      canEditSuggestedPostInfo: json['can_edit_suggested_post_info'] as bool,
      canGetAuthor: json['can_get_author'] as bool,
      canGetEmbeddingCode: json['can_get_embedding_code'] as bool,
      canGetLink: json['can_get_link'] as bool,
      canGetMediaTimestampLinks: json['can_get_media_timestamp_links'] as bool,
      canGetMessageThread: json['can_get_message_thread'] as bool,
      canGetPollVoteStatistics: json['can_get_poll_vote_statistics'] as bool,
      canGetReadDate: json['can_get_read_date'] as bool,
      canGetStatistics: json['can_get_statistics'] as bool,
      canGetVideoAdvertisements: json['can_get_video_advertisements'] as bool,
      canGetViewers: json['can_get_viewers'] as bool,
      canMarkTasksAsDone: json['can_mark_tasks_as_done'] as bool,
      canRecognizeSpeech: json['can_recognize_speech'] as bool,
      canReportChat: json['can_report_chat'] as bool,
      canReportReactions: json['can_report_reactions'] as bool,
      canReportSupergroupSpam: json['can_report_supergroup_spam'] as bool,
      canSetFactCheck: json['can_set_fact_check'] as bool,
      hasProtectedContentByCurrentUser:
          json['has_protected_content_by_current_user'] as bool,
      hasProtectedContentByOtherUser:
          json['has_protected_content_by_other_user'] as bool,
      needShowStatistics: json['need_show_statistics'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_add_offer': canAddOffer,
        'can_add_tasks': canAddTasks,
        'can_be_approved': canBeApproved,
        'can_be_copied': canBeCopied,
        'can_be_copied_to_secret_chat': canBeCopiedToSecretChat,
        'can_be_declined': canBeDeclined,
        'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
        'can_be_edited': canBeEdited,
        'can_be_forwarded': canBeForwarded,
        'can_be_paid': canBePaid,
        'can_be_pinned': canBePinned,
        'can_be_replied': canBeReplied,
        'can_be_replied_in_another_chat': canBeRepliedInAnotherChat,
        'can_be_saved': canBeSaved,
        'can_be_shared_in_story': canBeSharedInStory,
        'can_delete_reactions': canDeleteReactions,
        'can_edit_media': canEditMedia,
        'can_edit_scheduling_state': canEditSchedulingState,
        'can_edit_suggested_post_info': canEditSuggestedPostInfo,
        'can_get_author': canGetAuthor,
        'can_get_embedding_code': canGetEmbeddingCode,
        'can_get_link': canGetLink,
        'can_get_media_timestamp_links': canGetMediaTimestampLinks,
        'can_get_message_thread': canGetMessageThread,
        'can_get_poll_vote_statistics': canGetPollVoteStatistics,
        'can_get_read_date': canGetReadDate,
        'can_get_statistics': canGetStatistics,
        'can_get_video_advertisements': canGetVideoAdvertisements,
        'can_get_viewers': canGetViewers,
        'can_mark_tasks_as_done': canMarkTasksAsDone,
        'can_recognize_speech': canRecognizeSpeech,
        'can_report_chat': canReportChat,
        'can_report_reactions': canReportReactions,
        'can_report_supergroup_spam': canReportSupergroupSpam,
        'can_set_fact_check': canSetFactCheck,
        'has_protected_content_by_current_user':
            hasProtectedContentByCurrentUser,
        'has_protected_content_by_other_user': hasProtectedContentByOtherUser,
        'need_show_statistics': needShowStatistics,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageProperties &&
          const DeepCollectionEquality()
              .equals(other.canAddOffer, canAddOffer) &&
          const DeepCollectionEquality()
              .equals(other.canAddTasks, canAddTasks) &&
          const DeepCollectionEquality()
              .equals(other.canBeApproved, canBeApproved) &&
          const DeepCollectionEquality()
              .equals(other.canBeCopied, canBeCopied) &&
          const DeepCollectionEquality()
              .equals(other.canBeCopiedToSecretChat, canBeCopiedToSecretChat) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeclined, canBeDeclined) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeletedOnlyForSelf, canBeDeletedOnlyForSelf) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeletedForAllUsers, canBeDeletedForAllUsers) &&
          const DeepCollectionEquality()
              .equals(other.canBeEdited, canBeEdited) &&
          const DeepCollectionEquality()
              .equals(other.canBeForwarded, canBeForwarded) &&
          const DeepCollectionEquality().equals(other.canBePaid, canBePaid) &&
          const DeepCollectionEquality()
              .equals(other.canBePinned, canBePinned) &&
          const DeepCollectionEquality()
              .equals(other.canBeReplied, canBeReplied) &&
          const DeepCollectionEquality().equals(
              other.canBeRepliedInAnotherChat, canBeRepliedInAnotherChat) &&
          const DeepCollectionEquality().equals(other.canBeSaved, canBeSaved) &&
          const DeepCollectionEquality()
              .equals(other.canBeSharedInStory, canBeSharedInStory) &&
          const DeepCollectionEquality()
              .equals(other.canDeleteReactions, canDeleteReactions) &&
          const DeepCollectionEquality()
              .equals(other.canEditMedia, canEditMedia) &&
          const DeepCollectionEquality()
              .equals(other.canEditSchedulingState, canEditSchedulingState) &&
          const DeepCollectionEquality().equals(
              other.canEditSuggestedPostInfo, canEditSuggestedPostInfo) &&
          const DeepCollectionEquality()
              .equals(other.canGetAuthor, canGetAuthor) &&
          const DeepCollectionEquality()
              .equals(other.canGetEmbeddingCode, canGetEmbeddingCode) &&
          const DeepCollectionEquality().equals(other.canGetLink, canGetLink) &&
          const DeepCollectionEquality().equals(
              other.canGetMediaTimestampLinks, canGetMediaTimestampLinks) &&
          const DeepCollectionEquality()
              .equals(other.canGetMessageThread, canGetMessageThread) &&
          const DeepCollectionEquality().equals(
              other.canGetPollVoteStatistics, canGetPollVoteStatistics) &&
          const DeepCollectionEquality()
              .equals(other.canGetReadDate, canGetReadDate) &&
          const DeepCollectionEquality()
              .equals(other.canGetStatistics, canGetStatistics) &&
          const DeepCollectionEquality().equals(
              other.canGetVideoAdvertisements, canGetVideoAdvertisements) &&
          const DeepCollectionEquality()
              .equals(other.canGetViewers, canGetViewers) &&
          const DeepCollectionEquality()
              .equals(other.canMarkTasksAsDone, canMarkTasksAsDone) &&
          const DeepCollectionEquality()
              .equals(other.canRecognizeSpeech, canRecognizeSpeech) &&
          const DeepCollectionEquality().equals(other.canReportChat, canReportChat) &&
          const DeepCollectionEquality().equals(other.canReportReactions, canReportReactions) &&
          const DeepCollectionEquality().equals(other.canReportSupergroupSpam, canReportSupergroupSpam) &&
          const DeepCollectionEquality().equals(other.canSetFactCheck, canSetFactCheck) &&
          const DeepCollectionEquality().equals(other.hasProtectedContentByCurrentUser, hasProtectedContentByCurrentUser) &&
          const DeepCollectionEquality().equals(other.hasProtectedContentByOtherUser, hasProtectedContentByOtherUser) &&
          const DeepCollectionEquality().equals(other.needShowStatistics, needShowStatistics));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(canAddOffer),
        const DeepCollectionEquality().hash(canAddTasks),
        const DeepCollectionEquality().hash(canBeApproved),
        const DeepCollectionEquality().hash(canBeCopied),
        const DeepCollectionEquality().hash(canBeCopiedToSecretChat),
        const DeepCollectionEquality().hash(canBeDeclined),
        const DeepCollectionEquality().hash(canBeDeletedOnlyForSelf),
        const DeepCollectionEquality().hash(canBeDeletedForAllUsers),
        const DeepCollectionEquality().hash(canBeEdited),
        const DeepCollectionEquality().hash(canBeForwarded),
        const DeepCollectionEquality().hash(canBePaid),
        const DeepCollectionEquality().hash(canBePinned),
        const DeepCollectionEquality().hash(canBeReplied),
        const DeepCollectionEquality().hash(canBeRepliedInAnotherChat),
        const DeepCollectionEquality().hash(canBeSaved),
        const DeepCollectionEquality().hash(canBeSharedInStory),
        const DeepCollectionEquality().hash(canDeleteReactions),
        const DeepCollectionEquality().hash(canEditMedia),
        const DeepCollectionEquality().hash(canEditSchedulingState),
        const DeepCollectionEquality().hash(canEditSuggestedPostInfo),
        const DeepCollectionEquality().hash(canGetAuthor),
        const DeepCollectionEquality().hash(canGetEmbeddingCode),
        const DeepCollectionEquality().hash(canGetLink),
        const DeepCollectionEquality().hash(canGetMediaTimestampLinks),
        const DeepCollectionEquality().hash(canGetMessageThread),
        const DeepCollectionEquality().hash(canGetPollVoteStatistics),
        const DeepCollectionEquality().hash(canGetReadDate),
        const DeepCollectionEquality().hash(canGetStatistics),
        const DeepCollectionEquality().hash(canGetVideoAdvertisements),
        const DeepCollectionEquality().hash(canGetViewers),
        const DeepCollectionEquality().hash(canMarkTasksAsDone),
        const DeepCollectionEquality().hash(canRecognizeSpeech),
        const DeepCollectionEquality().hash(canReportChat),
        const DeepCollectionEquality().hash(canReportReactions),
        const DeepCollectionEquality().hash(canReportSupergroupSpam),
        const DeepCollectionEquality().hash(canSetFactCheck),
        const DeepCollectionEquality().hash(hasProtectedContentByCurrentUser),
        const DeepCollectionEquality().hash(hasProtectedContentByOtherUser),
        const DeepCollectionEquality().hash(needShowStatistics)
      ]);
}
