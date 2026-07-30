// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
@immutable
class Chat extends TdObject {
  const Chat({
    required this.id,
    required this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    this.upgradedGiftColors,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    required this.permissions,
    this.lastMessage,
    required this.positions,
    required this.chatLists,
    this.messageSenderId,
    this.blockList,
    required this.hasProtectedContent,
    required this.isTranslatable,
    required this.isMarkedAsUnread,
    required this.viewAsTopics,
    required this.hasScheduledMessages,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeReported,
    required this.defaultDisableNotification,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.unreadPollVoteCount,
    required this.notificationSettings,
    required this.availableReactions,
    required this.messageAutoDeleteTime,
    this.emojiStatus,
    this.background,
    this.theme,
    this.actionBar,
    this.businessBotManageBar,
    required this.videoChat,
    this.pendingJoinRequests,
    required this.replyMarkupMessageId,
    this.draftMessage,
    required this.clientData,
  });

  /// [id] Chat unique identifier
  final int id;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for message sender name,
  /// and backgrounds of chat photo, reply header, and link preview
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background for messages sent by the chat; 0
  /// if none
  final int backgroundCustomEmojiId;

  /// [upgradedGiftColors] Color scheme based on an upgraded gift to be used for
  /// the chat instead of accent_color_id and background_custom_emoji_id; may be
  /// null if none
  final UpgradedGiftColors? upgradedGiftColors;

  /// [profileAccentColorId] Identifier of the profile accent color for the
  /// chat's profile; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the background of the chat's profile; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [permissions] Actions that non-administrator chat members are allowed to
  /// take in the chat
  final ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null if none or unknown
  final Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// [chatLists] Chat lists to which the chat belongs. A chat can have a
  /// non-zero position in a chat list even if it doesn't belong to the chat
  /// list and have no position in a chat list even if it belongs to the chat
  /// list
  final List<ChatList> chatLists;

  /// [messageSenderId] Identifier of a user or chat that is selected to send
  /// messages in the chat; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  /// [hasProtectedContent] True, if chat content can't be saved locally,
  /// forwarded, or copied
  final bool hasProtectedContent;

  /// [isTranslatable] True, if translation of all messages in the chat must be
  /// suggested to the user
  final bool isTranslatable;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// [viewAsTopics] True, if the chat is a forum supergroup that must be shown
  /// in the "View as topics" mode, or Saved Messages chat that must be shown in
  /// the "View as chats"
  final bool viewAsTopics;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only
  /// for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for
  /// all users
  final bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators
  /// through reportChat or reportChatPhoto
  final bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification
  /// parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  /// chat
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the chat
  final int unreadReactionCount;

  /// [unreadPollVoteCount] Number of messages with unread poll votes in the
  /// chat
  final int unreadPollVoteCount;

  /// [notificationSettings] Notification settings for the chat
  final ChatNotificationSettings notificationSettings;

  /// [availableReactions] Types of reaction, available in the chat
  final ChatAvailableReactions availableReactions;

  /// [messageAutoDeleteTime] Current message auto-delete or self-destruct timer
  /// setting for the chat, in seconds; 0 if disabled. Self-destruct timer in
  /// secret chats starts after the message or its content is viewed.
  /// Auto-delete timer in other chats starts from the send date
  final int messageAutoDeleteTime;

  /// [emojiStatus] Emoji status to be shown along with chat title; may be null
  final EmojiStatus? emojiStatus;

  /// [background] Background set for the chat; may be null if none
  final ChatBackground? background;

  /// [theme] Theme set for the chat; may be null if none
  final ChatTheme? theme;

  /// [actionBar] Information about actions which must be possible to do through
  /// the chat action bar; may be null if none
  final ChatActionBar? actionBar;

  /// [businessBotManageBar] Information about bar for managing a business bot
  /// in the chat; may be null if none
  final BusinessBotManageBar? businessBotManageBar;

  /// [videoChat] Information about video chat of the chat
  final VideoChat videoChat;

  /// [pendingJoinRequests] Information about pending join requests; may be null
  /// if none
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// needs to be used; 0 if there is no reply markup in the chat
  final int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null if none
  final DraftMessage? draftMessage;

  /// [clientData] Application-specific data associated with the chat. (For
  /// example, the chat scroll position or local chat notification settings can
  /// be stored here.) Persistent if the message database is used
  final String clientData;

  static const String constructor = 'chat';

  static Chat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chat(
      id: (json['id'] as int?) ?? 0,
      type: ChatType.fromJson(json['type'] as Map<String, dynamic>?)!,
      title: (json['title'] as String?) ?? '',
      photo: ChatPhotoInfo.fromJson(json['photo'] as Map<String, dynamic>?),
      accentColorId: (json['accent_color_id'] as int?) ?? 0,
      backgroundCustomEmojiId: (json['background_custom_emoji_id'] is int
              ? json['background_custom_emoji_id'] as int
              : int.tryParse(
                  json['background_custom_emoji_id']?.toString() ?? '')) ??
          0,
      upgradedGiftColors: UpgradedGiftColors.fromJson(
          json['upgraded_gift_colors'] as Map<String, dynamic>?),
      profileAccentColorId: (json['profile_accent_color_id'] as int?) ?? 0,
      profileBackgroundCustomEmojiId:
          (json['profile_background_custom_emoji_id'] is int
                  ? json['profile_background_custom_emoji_id'] as int
                  : int.tryParse(
                      json['profile_background_custom_emoji_id']?.toString() ??
                          '')) ??
              0,
      permissions: ChatPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>?)!,
      lastMessage:
          Message.fromJson(json['last_message'] as Map<String, dynamic>?),
      positions: List<ChatPosition>.from(((json['positions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => ChatPosition.fromJson(item as Map<String, dynamic>?))
          .toList()),
      chatLists: List<ChatList>.from(
          ((json['chat_lists'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatList.fromJson(item as Map<String, dynamic>?))
              .toList()),
      messageSenderId: MessageSender.fromJson(
          json['message_sender_id'] as Map<String, dynamic>?),
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
      hasProtectedContent: (json['has_protected_content'] as bool?) ?? false,
      isTranslatable: (json['is_translatable'] as bool?) ?? false,
      isMarkedAsUnread: (json['is_marked_as_unread'] as bool?) ?? false,
      viewAsTopics: (json['view_as_topics'] as bool?) ?? false,
      hasScheduledMessages: (json['has_scheduled_messages'] as bool?) ?? false,
      canBeDeletedOnlyForSelf:
          (json['can_be_deleted_only_for_self'] as bool?) ?? false,
      canBeDeletedForAllUsers:
          (json['can_be_deleted_for_all_users'] as bool?) ?? false,
      canBeReported: (json['can_be_reported'] as bool?) ?? false,
      defaultDisableNotification:
          (json['default_disable_notification'] as bool?) ?? false,
      unreadCount: (json['unread_count'] as int?) ?? 0,
      lastReadInboxMessageId: (json['last_read_inbox_message_id'] as int?) ?? 0,
      lastReadOutboxMessageId:
          (json['last_read_outbox_message_id'] as int?) ?? 0,
      unreadMentionCount: (json['unread_mention_count'] as int?) ?? 0,
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
      unreadPollVoteCount: (json['unread_poll_vote_count'] as int?) ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
      availableReactions: ChatAvailableReactions.fromJson(
          json['available_reactions'] as Map<String, dynamic>?)!,
      messageAutoDeleteTime: (json['message_auto_delete_time'] as int?) ?? 0,
      emojiStatus:
          EmojiStatus.fromJson(json['emoji_status'] as Map<String, dynamic>?),
      background:
          ChatBackground.fromJson(json['background'] as Map<String, dynamic>?),
      theme: ChatTheme.fromJson(json['theme'] as Map<String, dynamic>?),
      actionBar:
          ChatActionBar.fromJson(json['action_bar'] as Map<String, dynamic>?),
      businessBotManageBar: BusinessBotManageBar.fromJson(
          json['business_bot_manage_bar'] as Map<String, dynamic>?),
      videoChat:
          VideoChat.fromJson(json['video_chat'] as Map<String, dynamic>?)!,
      pendingJoinRequests: ChatJoinRequestsInfo.fromJson(
          json['pending_join_requests'] as Map<String, dynamic>?),
      replyMarkupMessageId: (json['reply_markup_message_id'] as int?) ?? 0,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
      clientData: (json['client_data'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type.toJson(),
        'title': title,
        'photo': photo?.toJson(),
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'upgraded_gift_colors': upgradedGiftColors?.toJson(),
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        'permissions': permissions.toJson(),
        'last_message': lastMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        'chat_lists': chatLists.map((item) => item.toJson()).toList(),
        'message_sender_id': messageSenderId?.toJson(),
        'block_list': blockList?.toJson(),
        'has_protected_content': hasProtectedContent,
        'is_translatable': isTranslatable,
        'is_marked_as_unread': isMarkedAsUnread,
        'view_as_topics': viewAsTopics,
        'has_scheduled_messages': hasScheduledMessages,
        'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
        'can_be_reported': canBeReported,
        'default_disable_notification': defaultDisableNotification,
        'unread_count': unreadCount,
        'last_read_inbox_message_id': lastReadInboxMessageId,
        'last_read_outbox_message_id': lastReadOutboxMessageId,
        'unread_mention_count': unreadMentionCount,
        'unread_reaction_count': unreadReactionCount,
        'unread_poll_vote_count': unreadPollVoteCount,
        'notification_settings': notificationSettings.toJson(),
        'available_reactions': availableReactions.toJson(),
        'message_auto_delete_time': messageAutoDeleteTime,
        'emoji_status': emojiStatus?.toJson(),
        'background': background?.toJson(),
        'theme': theme?.toJson(),
        'action_bar': actionBar?.toJson(),
        'business_bot_manage_bar': businessBotManageBar?.toJson(),
        'video_chat': videoChat.toJson(),
        'pending_join_requests': pendingJoinRequests?.toJson(),
        'reply_markup_message_id': replyMarkupMessageId,
        'draft_message': draftMessage?.toJson(),
        'client_data': clientData,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Chat &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality()
              .equals(other.accentColorId, accentColorId) &&
          const DeepCollectionEquality()
              .equals(other.backgroundCustomEmojiId, backgroundCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.upgradedGiftColors, upgradedGiftColors) &&
          const DeepCollectionEquality()
              .equals(other.profileAccentColorId, profileAccentColorId) &&
          const DeepCollectionEquality().equals(
              other.profileBackgroundCustomEmojiId,
              profileBackgroundCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.permissions, permissions) &&
          const DeepCollectionEquality()
              .equals(other.lastMessage, lastMessage) &&
          const DeepCollectionEquality().equals(other.positions, positions) &&
          const DeepCollectionEquality().equals(other.chatLists, chatLists) &&
          const DeepCollectionEquality()
              .equals(other.messageSenderId, messageSenderId) &&
          const DeepCollectionEquality().equals(other.blockList, blockList) &&
          const DeepCollectionEquality()
              .equals(other.hasProtectedContent, hasProtectedContent) &&
          const DeepCollectionEquality()
              .equals(other.isTranslatable, isTranslatable) &&
          const DeepCollectionEquality()
              .equals(other.isMarkedAsUnread, isMarkedAsUnread) &&
          const DeepCollectionEquality()
              .equals(other.viewAsTopics, viewAsTopics) &&
          const DeepCollectionEquality()
              .equals(other.hasScheduledMessages, hasScheduledMessages) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeletedOnlyForSelf, canBeDeletedOnlyForSelf) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeletedForAllUsers, canBeDeletedForAllUsers) &&
          const DeepCollectionEquality()
              .equals(other.canBeReported, canBeReported) &&
          const DeepCollectionEquality().equals(
              other.defaultDisableNotification, defaultDisableNotification) &&
          const DeepCollectionEquality()
              .equals(other.unreadCount, unreadCount) &&
          const DeepCollectionEquality()
              .equals(other.lastReadInboxMessageId, lastReadInboxMessageId) &&
          const DeepCollectionEquality()
              .equals(other.lastReadOutboxMessageId, lastReadOutboxMessageId) &&
          const DeepCollectionEquality()
              .equals(other.unreadMentionCount, unreadMentionCount) &&
          const DeepCollectionEquality()
              .equals(other.unreadReactionCount, unreadReactionCount) &&
          const DeepCollectionEquality()
              .equals(other.unreadPollVoteCount, unreadPollVoteCount) &&
          const DeepCollectionEquality()
              .equals(other.notificationSettings, notificationSettings) &&
          const DeepCollectionEquality()
              .equals(other.availableReactions, availableReactions) &&
          const DeepCollectionEquality()
              .equals(other.messageAutoDeleteTime, messageAutoDeleteTime) &&
          const DeepCollectionEquality()
              .equals(other.emojiStatus, emojiStatus) &&
          const DeepCollectionEquality().equals(other.background, background) &&
          const DeepCollectionEquality().equals(other.theme, theme) &&
          const DeepCollectionEquality().equals(other.actionBar, actionBar) &&
          const DeepCollectionEquality()
              .equals(other.businessBotManageBar, businessBotManageBar) &&
          const DeepCollectionEquality().equals(other.videoChat, videoChat) &&
          const DeepCollectionEquality()
              .equals(other.pendingJoinRequests, pendingJoinRequests) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkupMessageId, replyMarkupMessageId) &&
          const DeepCollectionEquality()
              .equals(other.draftMessage, draftMessage) &&
          const DeepCollectionEquality().equals(other.clientData, clientData));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(backgroundCustomEmojiId),
        const DeepCollectionEquality().hash(upgradedGiftColors),
        const DeepCollectionEquality().hash(profileAccentColorId),
        const DeepCollectionEquality().hash(profileBackgroundCustomEmojiId),
        const DeepCollectionEquality().hash(permissions),
        const DeepCollectionEquality().hash(lastMessage),
        const DeepCollectionEquality().hash(positions),
        const DeepCollectionEquality().hash(chatLists),
        const DeepCollectionEquality().hash(messageSenderId),
        const DeepCollectionEquality().hash(blockList),
        const DeepCollectionEquality().hash(hasProtectedContent),
        const DeepCollectionEquality().hash(isTranslatable),
        const DeepCollectionEquality().hash(isMarkedAsUnread),
        const DeepCollectionEquality().hash(viewAsTopics),
        const DeepCollectionEquality().hash(hasScheduledMessages),
        const DeepCollectionEquality().hash(canBeDeletedOnlyForSelf),
        const DeepCollectionEquality().hash(canBeDeletedForAllUsers),
        const DeepCollectionEquality().hash(canBeReported),
        const DeepCollectionEquality().hash(defaultDisableNotification),
        const DeepCollectionEquality().hash(unreadCount),
        const DeepCollectionEquality().hash(lastReadInboxMessageId),
        const DeepCollectionEquality().hash(lastReadOutboxMessageId),
        const DeepCollectionEquality().hash(unreadMentionCount),
        const DeepCollectionEquality().hash(unreadReactionCount),
        const DeepCollectionEquality().hash(unreadPollVoteCount),
        const DeepCollectionEquality().hash(notificationSettings),
        const DeepCollectionEquality().hash(availableReactions),
        const DeepCollectionEquality().hash(messageAutoDeleteTime),
        const DeepCollectionEquality().hash(emojiStatus),
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(theme),
        const DeepCollectionEquality().hash(actionBar),
        const DeepCollectionEquality().hash(businessBotManageBar),
        const DeepCollectionEquality().hash(videoChat),
        const DeepCollectionEquality().hash(pendingJoinRequests),
        const DeepCollectionEquality().hash(replyMarkupMessageId),
        const DeepCollectionEquality().hash(draftMessage),
        const DeepCollectionEquality().hash(clientData)
      ]);
}
