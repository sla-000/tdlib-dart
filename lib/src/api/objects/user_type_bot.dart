// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A bot (see https://core.telegram.org/bots)
@immutable
class UserTypeBot extends UserType {
  const UserTypeBot({
    required this.canBeEdited,
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.hasMainWebApp,
    required this.hasTopics,
    required this.allowsUsersToCreateTopics,
    required this.canManageBots,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
    required this.canConnectToBusiness,
    required this.canBeAddedToAttachmentMenu,
    required this.activeUserCount,
  });

  /// [canBeEdited] True, if the bot is owned by the current user and can be
  /// edited using the methods toggleBotUsernameIsActive,
  /// reorderBotActiveUsernames, setBotProfilePhoto, setBotName,
  /// setBotInfoDescription, and setBotInfoShortDescription
  final bool canBeEdited;

  /// [canJoinGroups] True, if the bot can be invited to basic group and
  /// supergroup chats
  final bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic
  /// group or supergroup chats and not just those addressed to the bot. In
  /// private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// [hasMainWebApp] True, if the bot has the main Web App
  final bool hasMainWebApp;

  /// [hasTopics] True, if the bot has topics
  final bool hasTopics;

  /// [allowsUsersToCreateTopics] True, if users can create and delete topics in
  /// the chat with the bot
  final bool allowsUsersToCreateTopics;

  /// [canManageBots] True, if the bot can manage other bots
  final bool canManageBots;

  /// [isInline] True, if the bot supports inline queries
  final bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the
  /// application input field)
  final String inlineQueryPlaceholder;

  /// [needLocation] True, if the location of the user is expected to be sent
  /// with every inline query to this bot
  final bool needLocation;

  /// [canConnectToBusiness] True, if the bot supports connection to Telegram
  /// Business accounts
  final bool canConnectToBusiness;

  /// [canBeAddedToAttachmentMenu] True, if the bot can be added to attachment
  /// or side menu
  final bool canBeAddedToAttachmentMenu;

  /// [activeUserCount] The number of recently active users of the bot
  final int activeUserCount;

  static const String constructor = 'userTypeBot';

  static UserTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTypeBot(
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      canJoinGroups: (json['can_join_groups'] as bool?) ?? false,
      canReadAllGroupMessages:
          (json['can_read_all_group_messages'] as bool?) ?? false,
      hasMainWebApp: (json['has_main_web_app'] as bool?) ?? false,
      hasTopics: (json['has_topics'] as bool?) ?? false,
      allowsUsersToCreateTopics:
          (json['allows_users_to_create_topics'] as bool?) ?? false,
      canManageBots: (json['can_manage_bots'] as bool?) ?? false,
      isInline: (json['is_inline'] as bool?) ?? false,
      inlineQueryPlaceholder:
          (json['inline_query_placeholder'] as String?) ?? '',
      needLocation: (json['need_location'] as bool?) ?? false,
      canConnectToBusiness: (json['can_connect_to_business'] as bool?) ?? false,
      canBeAddedToAttachmentMenu:
          (json['can_be_added_to_attachment_menu'] as bool?) ?? false,
      activeUserCount: (json['active_user_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_edited': canBeEdited,
        'can_join_groups': canJoinGroups,
        'can_read_all_group_messages': canReadAllGroupMessages,
        'has_main_web_app': hasMainWebApp,
        'has_topics': hasTopics,
        'allows_users_to_create_topics': allowsUsersToCreateTopics,
        'can_manage_bots': canManageBots,
        'is_inline': isInline,
        'inline_query_placeholder': inlineQueryPlaceholder,
        'need_location': needLocation,
        'can_connect_to_business': canConnectToBusiness,
        'can_be_added_to_attachment_menu': canBeAddedToAttachmentMenu,
        'active_user_count': activeUserCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserTypeBot &&
          const DeepCollectionEquality()
              .equals(other.canBeEdited, canBeEdited) &&
          const DeepCollectionEquality()
              .equals(other.canJoinGroups, canJoinGroups) &&
          const DeepCollectionEquality()
              .equals(other.canReadAllGroupMessages, canReadAllGroupMessages) &&
          const DeepCollectionEquality()
              .equals(other.hasMainWebApp, hasMainWebApp) &&
          const DeepCollectionEquality().equals(other.hasTopics, hasTopics) &&
          const DeepCollectionEquality().equals(
              other.allowsUsersToCreateTopics, allowsUsersToCreateTopics) &&
          const DeepCollectionEquality()
              .equals(other.canManageBots, canManageBots) &&
          const DeepCollectionEquality().equals(other.isInline, isInline) &&
          const DeepCollectionEquality()
              .equals(other.inlineQueryPlaceholder, inlineQueryPlaceholder) &&
          const DeepCollectionEquality()
              .equals(other.needLocation, needLocation) &&
          const DeepCollectionEquality()
              .equals(other.canConnectToBusiness, canConnectToBusiness) &&
          const DeepCollectionEquality().equals(
              other.canBeAddedToAttachmentMenu, canBeAddedToAttachmentMenu) &&
          const DeepCollectionEquality()
              .equals(other.activeUserCount, activeUserCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(canBeEdited),
        const DeepCollectionEquality().hash(canJoinGroups),
        const DeepCollectionEquality().hash(canReadAllGroupMessages),
        const DeepCollectionEquality().hash(hasMainWebApp),
        const DeepCollectionEquality().hash(hasTopics),
        const DeepCollectionEquality().hash(allowsUsersToCreateTopics),
        const DeepCollectionEquality().hash(canManageBots),
        const DeepCollectionEquality().hash(isInline),
        const DeepCollectionEquality().hash(inlineQueryPlaceholder),
        const DeepCollectionEquality().hash(needLocation),
        const DeepCollectionEquality().hash(canConnectToBusiness),
        const DeepCollectionEquality().hash(canBeAddedToAttachmentMenu),
        const DeepCollectionEquality().hash(activeUserCount)
      ]);
}
