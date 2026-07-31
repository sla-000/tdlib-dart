// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message
@immutable
class Message extends TdObject {
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.isFromOffline,
    required this.canBeSaved,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isPaidStarSuggestedPost,
    required this.isPaidTonSuggestedPost,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.importInfo,
    this.interactionInfo,
    required this.unreadReactions,
    this.factCheck,
    this.suggestedPostInfo,
    this.replyTo,
    this.topicId,
    this.selfDestructType,
    required this.selfDestructIn,
    required this.autoDeleteIn,
    required this.viaBotUserId,
    required this.senderBusinessBotUserId,
    required this.senderBoostCount,
    required this.senderTag,
    required this.paidMessageStarCount,
    this.authorSignature,
    required this.mediaAlbumId,
    required this.effectId,
    this.restrictionInfo,
    required this.summaryLanguageCode,
    required this.content,
    this.replyMarkup,
  });

  /// [id] Message identifier; unique for the chat to which the message belongs
  final int id;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sendingState] The sending state of the message; may be null if the
  /// message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [schedulingState] The scheduling state of the message; may be null if the
  /// message isn't scheduled
  final MessageSchedulingState? schedulingState;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [isFromOffline] True, if the message was sent because of a scheduled
  /// action by the message sender, for example, as away, or greeting service
  /// message
  final bool isFromOffline;

  /// [canBeSaved] True, if content of the message can be saved locally
  final bool canBeSaved;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media
  /// in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to
  /// channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// [isPaidStarSuggestedPost] True, if the message is a suggested channel post
  /// which was paid in Telegram Stars; a warning must be shown if the message
  /// is deleted in less than getOption("suggested_post_lifetime_min") seconds
  /// after sending
  final bool isPaidStarSuggestedPost;

  /// [isPaidTonSuggestedPost] True, if the message is a suggested channel post
  /// which was paid in Toncoins; a warning must be shown if the message is
  /// deleted in less than getOption("suggested_post_lifetime_min") seconds
  /// after sending
  final bool isPaidTonSuggestedPost;

  /// [containsUnreadMention] True, if the message contains an unread mention
  /// for the current user
  final bool containsUnreadMention;

  /// [date] Point in time (Unix timestamp) when the message was sent; 0 for
  /// scheduled messages
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last
  /// edited; 0 for scheduled messages
  final int editDate;

  /// [forwardInfo] Information about the initial message sender; may be null if
  /// none or unknown
  final MessageForwardInfo? forwardInfo;

  /// [importInfo] Information about the initial message for messages created
  /// with importMessages; may be null if the message isn't imported
  final MessageImportInfo? importInfo;

  /// [interactionInfo] Information about interactions with the message; may be
  /// null if none
  final MessageInteractionInfo? interactionInfo;

  /// [unreadReactions] Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// [factCheck] Information about fact-check added to the message; may be null
  /// if none
  final FactCheck? factCheck;

  /// [suggestedPostInfo] Information about the suggested post; may be null if
  /// the message isn't a suggested post
  final SuggestedPostInfo? suggestedPostInfo;

  /// [replyTo] Information about the message or the story this message is
  /// replying to; may be null if none
  final MessageReplyTo? replyTo;

  /// [topicId] Identifier of the topic within the chat to which the message
  /// belongs; may be null if none; may change when the chat is converted to a
  /// forum or back
  final MessageTopic? topicId;

  /// [selfDestructType] The message's self-destruct type; may be null if none
  final MessageSelfDestructType? selfDestructType;

  /// [selfDestructIn] Time left before the message self-destruct timer expires,
  /// in seconds; 0 if self-destruction isn't scheduled yet
  final double selfDestructIn;

  /// [autoDeleteIn] Time left before the message will be automatically deleted
  /// by message_auto_delete_time setting of the chat, in seconds; 0 if never
  final double autoDeleteIn;

  /// [viaBotUserId] If non-zero, the user identifier of the inline bot through
  /// which this message was sent
  final int viaBotUserId;

  /// [senderBusinessBotUserId] If non-zero, the user identifier of the business
  /// bot that sent this message
  final int senderBusinessBotUserId;

  /// [senderBoostCount] Number of times the sender of the message boosted the
  /// supergroup at the time the message was sent; 0 if none or unknown. For
  /// messages sent by the current user, supergroupFullInfo.my_boost_count must
  /// be used instead
  final int senderBoostCount;

  /// [senderTag] Tag of the sender of the message in the supergroup at the time
  /// the message was sent; may be empty if none or unknown. For messages sent
  /// in basic groups or supergroup administrators, the current custom title or
  /// tag must be used instead
  final String senderTag;

  /// [paidMessageStarCount] The number of Telegram Stars the sender paid to
  /// send the message
  final int paidMessageStarCount;

  /// [authorSignature] For channel posts and anonymous group messages, optional
  /// author signature
  final String? authorSignature;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to; 0 if
  /// none. Only audios, documents, photos and videos can be grouped together in
  /// albums
  final int mediaAlbumId;

  /// [effectId] Unique identifier of the effect added to the message; 0 if none
  final int effectId;

  /// [restrictionInfo] Information about the restrictions that must be applied
  /// to the message content; may be null if none
  final RestrictionInfo? restrictionInfo;

  /// [summaryLanguageCode] IETF language tag of the message language on which
  /// it can be summarized; empty if summary isn't available for the message
  final String summaryLanguageCode;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Reply markup for the message; may be null if none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'message';

  static Message? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Message(
      id: (json['id'] as int?) ?? 0,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      chatId: (json['chat_id'] as int?) ?? 0,
      sendingState: MessageSendingState.fromJson(
          json['sending_state'] as Map<String, dynamic>?),
      schedulingState: MessageSchedulingState.fromJson(
          json['scheduling_state'] as Map<String, dynamic>?),
      isOutgoing: (json['is_outgoing'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
      isFromOffline: (json['is_from_offline'] as bool?) ?? false,
      canBeSaved: (json['can_be_saved'] as bool?) ?? false,
      hasTimestampedMedia: (json['has_timestamped_media'] as bool?) ?? false,
      isChannelPost: (json['is_channel_post'] as bool?) ?? false,
      isPaidStarSuggestedPost:
          (json['is_paid_star_suggested_post'] as bool?) ?? false,
      isPaidTonSuggestedPost:
          (json['is_paid_ton_suggested_post'] as bool?) ?? false,
      containsUnreadMention:
          (json['contains_unread_mention'] as bool?) ?? false,
      date: (json['date'] as int?) ?? 0,
      editDate: (json['edit_date'] as int?) ?? 0,
      forwardInfo: MessageForwardInfo.fromJson(
          json['forward_info'] as Map<String, dynamic>?),
      importInfo: MessageImportInfo.fromJson(
          json['import_info'] as Map<String, dynamic>?),
      interactionInfo: MessageInteractionInfo.fromJson(
          json['interaction_info'] as Map<String, dynamic>?),
      unreadReactions: List<UnreadReaction>.from(((json['unread_reactions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => UnreadReaction.fromJson(item as Map<String, dynamic>?))
          .toList()),
      factCheck:
          FactCheck.fromJson(json['fact_check'] as Map<String, dynamic>?),
      suggestedPostInfo: SuggestedPostInfo.fromJson(
          json['suggested_post_info'] as Map<String, dynamic>?),
      replyTo:
          MessageReplyTo.fromJson(json['reply_to'] as Map<String, dynamic>?),
      topicId: MessageTopic.fromJson(json['topic_id'] as Map<String, dynamic>?),
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
      selfDestructIn: (json['self_destruct_in'] as num?)?.toDouble() ?? 0.0,
      autoDeleteIn: (json['auto_delete_in'] as num?)?.toDouble() ?? 0.0,
      viaBotUserId: (json['via_bot_user_id'] as int?) ?? 0,
      senderBusinessBotUserId:
          (json['sender_business_bot_user_id'] as int?) ?? 0,
      senderBoostCount: (json['sender_boost_count'] as int?) ?? 0,
      senderTag: (json['sender_tag'] as String?) ?? '',
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
      authorSignature: json['author_signature'] as String?,
      mediaAlbumId: (json['media_album_id'] is int
              ? json['media_album_id'] as int
              : int.tryParse(json['media_album_id']?.toString() ?? '')) ??
          0,
      effectId: (json['effect_id'] is int
              ? json['effect_id'] as int
              : int.tryParse(json['effect_id']?.toString() ?? '')) ??
          0,
      restrictionInfo: RestrictionInfo.fromJson(
          json['restriction_info'] as Map<String, dynamic>?),
      summaryLanguageCode: (json['summary_language_code'] as String?) ?? '',
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender_id': senderId.toJson(),
        'chat_id': chatId,
        'sending_state': sendingState?.toJson(),
        'scheduling_state': schedulingState?.toJson(),
        'is_outgoing': isOutgoing,
        'is_pinned': isPinned,
        'is_from_offline': isFromOffline,
        'can_be_saved': canBeSaved,
        'has_timestamped_media': hasTimestampedMedia,
        'is_channel_post': isChannelPost,
        'is_paid_star_suggested_post': isPaidStarSuggestedPost,
        'is_paid_ton_suggested_post': isPaidTonSuggestedPost,
        'contains_unread_mention': containsUnreadMention,
        'date': date,
        'edit_date': editDate,
        'forward_info': forwardInfo?.toJson(),
        'import_info': importInfo?.toJson(),
        'interaction_info': interactionInfo?.toJson(),
        'unread_reactions':
            unreadReactions.map((item) => item.toJson()).toList(),
        'fact_check': factCheck?.toJson(),
        'suggested_post_info': suggestedPostInfo?.toJson(),
        'reply_to': replyTo?.toJson(),
        'topic_id': topicId?.toJson(),
        'self_destruct_type': selfDestructType?.toJson(),
        'self_destruct_in': selfDestructIn,
        'auto_delete_in': autoDeleteIn,
        'via_bot_user_id': viaBotUserId,
        'sender_business_bot_user_id': senderBusinessBotUserId,
        'sender_boost_count': senderBoostCount,
        'sender_tag': senderTag,
        'paid_message_star_count': paidMessageStarCount,
        'author_signature': authorSignature,
        'media_album_id': mediaAlbumId.toString(),
        'effect_id': effectId.toString(),
        'restriction_info': restrictionInfo?.toJson(),
        'summary_language_code': summaryLanguageCode,
        'content': content.toJson(),
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Message &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.sendingState, sendingState) &&
          const DeepCollectionEquality()
              .equals(other.schedulingState, schedulingState) &&
          const DeepCollectionEquality().equals(other.isOutgoing, isOutgoing) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned) &&
          const DeepCollectionEquality()
              .equals(other.isFromOffline, isFromOffline) &&
          const DeepCollectionEquality().equals(other.canBeSaved, canBeSaved) &&
          const DeepCollectionEquality()
              .equals(other.hasTimestampedMedia, hasTimestampedMedia) &&
          const DeepCollectionEquality()
              .equals(other.isChannelPost, isChannelPost) &&
          const DeepCollectionEquality()
              .equals(other.isPaidStarSuggestedPost, isPaidStarSuggestedPost) &&
          const DeepCollectionEquality()
              .equals(other.isPaidTonSuggestedPost, isPaidTonSuggestedPost) &&
          const DeepCollectionEquality()
              .equals(other.containsUnreadMention, containsUnreadMention) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.editDate, editDate) &&
          const DeepCollectionEquality()
              .equals(other.forwardInfo, forwardInfo) &&
          const DeepCollectionEquality().equals(other.importInfo, importInfo) &&
          const DeepCollectionEquality()
              .equals(other.interactionInfo, interactionInfo) &&
          const DeepCollectionEquality()
              .equals(other.unreadReactions, unreadReactions) &&
          const DeepCollectionEquality().equals(other.factCheck, factCheck) &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostInfo, suggestedPostInfo) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality()
              .equals(other.selfDestructType, selfDestructType) &&
          const DeepCollectionEquality()
              .equals(other.selfDestructIn, selfDestructIn) &&
          const DeepCollectionEquality()
              .equals(other.autoDeleteIn, autoDeleteIn) &&
          const DeepCollectionEquality()
              .equals(other.viaBotUserId, viaBotUserId) &&
          const DeepCollectionEquality()
              .equals(other.senderBusinessBotUserId, senderBusinessBotUserId) &&
          const DeepCollectionEquality()
              .equals(other.senderBoostCount, senderBoostCount) &&
          const DeepCollectionEquality().equals(other.senderTag, senderTag) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount) &&
          const DeepCollectionEquality()
              .equals(other.authorSignature, authorSignature) &&
          const DeepCollectionEquality()
              .equals(other.mediaAlbumId, mediaAlbumId) &&
          const DeepCollectionEquality().equals(other.effectId, effectId) &&
          const DeepCollectionEquality()
              .equals(other.restrictionInfo, restrictionInfo) &&
          const DeepCollectionEquality()
              .equals(other.summaryLanguageCode, summaryLanguageCode) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(sendingState),
        const DeepCollectionEquality().hash(schedulingState),
        const DeepCollectionEquality().hash(isOutgoing),
        const DeepCollectionEquality().hash(isPinned),
        const DeepCollectionEquality().hash(isFromOffline),
        const DeepCollectionEquality().hash(canBeSaved),
        const DeepCollectionEquality().hash(hasTimestampedMedia),
        const DeepCollectionEquality().hash(isChannelPost),
        const DeepCollectionEquality().hash(isPaidStarSuggestedPost),
        const DeepCollectionEquality().hash(isPaidTonSuggestedPost),
        const DeepCollectionEquality().hash(containsUnreadMention),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(editDate),
        const DeepCollectionEquality().hash(forwardInfo),
        const DeepCollectionEquality().hash(importInfo),
        const DeepCollectionEquality().hash(interactionInfo),
        const DeepCollectionEquality().hash(unreadReactions),
        const DeepCollectionEquality().hash(factCheck),
        const DeepCollectionEquality().hash(suggestedPostInfo),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(selfDestructType),
        const DeepCollectionEquality().hash(selfDestructIn),
        const DeepCollectionEquality().hash(autoDeleteIn),
        const DeepCollectionEquality().hash(viaBotUserId),
        const DeepCollectionEquality().hash(senderBusinessBotUserId),
        const DeepCollectionEquality().hash(senderBoostCount),
        const DeepCollectionEquality().hash(senderTag),
        const DeepCollectionEquality().hash(paidMessageStarCount),
        const DeepCollectionEquality().hash(authorSignature),
        const DeepCollectionEquality().hash(mediaAlbumId),
        const DeepCollectionEquality().hash(effectId),
        const DeepCollectionEquality().hash(restrictionInfo),
        const DeepCollectionEquality().hash(summaryLanguageCode),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(replyMarkup)
      ]);
}
