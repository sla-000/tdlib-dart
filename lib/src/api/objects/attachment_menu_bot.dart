// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a bot, which can be added to attachment or side menu
@immutable
class AttachmentMenuBot extends TdObject {
  const AttachmentMenuBot({
    required this.botUserId,
    required this.supportsSelfChat,
    required this.supportsUserChats,
    required this.supportsBotChats,
    required this.supportsGroupChats,
    required this.supportsChannelChats,
    required this.requestWriteAccess,
    required this.isAdded,
    required this.showInAttachmentMenu,
    required this.showInSideMenu,
    required this.showDisclaimerInSideMenu,
    required this.name,
    this.nameColor,
    this.defaultIcon,
    this.iosStaticIcon,
    this.iosAnimatedIcon,
    this.iosSideMenuIcon,
    this.androidIcon,
    this.androidSideMenuIcon,
    this.macosIcon,
    this.macosSideMenuIcon,
    this.iconColor,
    this.webAppPlaceholder,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [supportsSelfChat] True, if the bot supports opening from attachment menu
  /// in the chat with the bot
  final bool supportsSelfChat;

  /// [supportsUserChats] True, if the bot supports opening from attachment menu
  /// in private chats with ordinary users
  final bool supportsUserChats;

  /// [supportsBotChats] True, if the bot supports opening from attachment menu
  /// in private chats with other bots
  final bool supportsBotChats;

  /// [supportsGroupChats] True, if the bot supports opening from attachment
  /// menu in basic group and supergroup chats
  final bool supportsGroupChats;

  /// [supportsChannelChats] True, if the bot supports opening from attachment
  /// menu in channel chats
  final bool supportsChannelChats;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// send messages to the bot
  final bool requestWriteAccess;

  /// [isAdded] True, if the bot was explicitly added by the user. If the bot
  /// isn't added, then on the first bot launch toggleBotIsAddedToAttachmentMenu
  /// must be called and the bot must be added or removed
  final bool isAdded;

  /// [showInAttachmentMenu] True, if the bot must be shown in the attachment
  /// menu
  final bool showInAttachmentMenu;

  /// [showInSideMenu] True, if the bot must be shown in the side menu
  final bool showInSideMenu;

  /// [showDisclaimerInSideMenu] True, if a disclaimer, why the bot is shown in
  /// the side menu, is needed
  final bool showDisclaimerInSideMenu;

  /// [name] Name for the bot in attachment menu
  final String name;

  /// [nameColor] Color to highlight selected name of the bot if appropriate;
  /// may be null
  final AttachmentMenuBotColor? nameColor;

  /// [defaultIcon] Default icon for the bot in SVG format; may be null
  final File? defaultIcon;

  /// [iosStaticIcon] Icon for the bot in SVG format for the official iOS app;
  /// may be null
  final File? iosStaticIcon;

  /// [iosAnimatedIcon] Icon for the bot in TGS format for the official iOS app;
  /// may be null
  final File? iosAnimatedIcon;

  /// [iosSideMenuIcon] Icon for the bot in PNG format for the official iOS app
  /// side menu; may be null
  final File? iosSideMenuIcon;

  /// [androidIcon] Icon for the bot in TGS format for the official Android app;
  /// may be null
  final File? androidIcon;

  /// [androidSideMenuIcon] Icon for the bot in SVG format for the official
  /// Android app side menu; may be null
  final File? androidSideMenuIcon;

  /// [macosIcon] Icon for the bot in TGS format for the official native macOS
  /// app; may be null
  final File? macosIcon;

  /// [macosSideMenuIcon] Icon for the bot in PNG format for the official macOS
  /// app side menu; may be null
  final File? macosSideMenuIcon;

  /// [iconColor] Color to highlight selected icon of the bot if appropriate;
  /// may be null
  final AttachmentMenuBotColor? iconColor;

  /// [webAppPlaceholder] Default placeholder for opened Web Apps in SVG format;
  /// may be null
  final File? webAppPlaceholder;

  static const String constructor = 'attachmentMenuBot';

  static AttachmentMenuBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AttachmentMenuBot(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      supportsSelfChat: (json['supports_self_chat'] as bool?) ?? false,
      supportsUserChats: (json['supports_user_chats'] as bool?) ?? false,
      supportsBotChats: (json['supports_bot_chats'] as bool?) ?? false,
      supportsGroupChats: (json['supports_group_chats'] as bool?) ?? false,
      supportsChannelChats: (json['supports_channel_chats'] as bool?) ?? false,
      requestWriteAccess: (json['request_write_access'] as bool?) ?? false,
      isAdded: (json['is_added'] as bool?) ?? false,
      showInAttachmentMenu: (json['show_in_attachment_menu'] as bool?) ?? false,
      showInSideMenu: (json['show_in_side_menu'] as bool?) ?? false,
      showDisclaimerInSideMenu:
          (json['show_disclaimer_in_side_menu'] as bool?) ?? false,
      name: (json['name'] as String?) ?? '',
      nameColor: AttachmentMenuBotColor.fromJson(
          json['name_color'] as Map<String, dynamic>?),
      defaultIcon: File.fromJson(json['default_icon'] as Map<String, dynamic>?),
      iosStaticIcon:
          File.fromJson(json['ios_static_icon'] as Map<String, dynamic>?),
      iosAnimatedIcon:
          File.fromJson(json['ios_animated_icon'] as Map<String, dynamic>?),
      iosSideMenuIcon:
          File.fromJson(json['ios_side_menu_icon'] as Map<String, dynamic>?),
      androidIcon: File.fromJson(json['android_icon'] as Map<String, dynamic>?),
      androidSideMenuIcon: File.fromJson(
          json['android_side_menu_icon'] as Map<String, dynamic>?),
      macosIcon: File.fromJson(json['macos_icon'] as Map<String, dynamic>?),
      macosSideMenuIcon:
          File.fromJson(json['macos_side_menu_icon'] as Map<String, dynamic>?),
      iconColor: AttachmentMenuBotColor.fromJson(
          json['icon_color'] as Map<String, dynamic>?),
      webAppPlaceholder:
          File.fromJson(json['web_app_placeholder'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'supports_self_chat': supportsSelfChat,
        'supports_user_chats': supportsUserChats,
        'supports_bot_chats': supportsBotChats,
        'supports_group_chats': supportsGroupChats,
        'supports_channel_chats': supportsChannelChats,
        'request_write_access': requestWriteAccess,
        'is_added': isAdded,
        'show_in_attachment_menu': showInAttachmentMenu,
        'show_in_side_menu': showInSideMenu,
        'show_disclaimer_in_side_menu': showDisclaimerInSideMenu,
        'name': name,
        'name_color': nameColor?.toJson(),
        'default_icon': defaultIcon?.toJson(),
        'ios_static_icon': iosStaticIcon?.toJson(),
        'ios_animated_icon': iosAnimatedIcon?.toJson(),
        'ios_side_menu_icon': iosSideMenuIcon?.toJson(),
        'android_icon': androidIcon?.toJson(),
        'android_side_menu_icon': androidSideMenuIcon?.toJson(),
        'macos_icon': macosIcon?.toJson(),
        'macos_side_menu_icon': macosSideMenuIcon?.toJson(),
        'icon_color': iconColor?.toJson(),
        'web_app_placeholder': webAppPlaceholder?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AttachmentMenuBot &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.supportsSelfChat, supportsSelfChat) &&
          const DeepCollectionEquality()
              .equals(other.supportsUserChats, supportsUserChats) &&
          const DeepCollectionEquality()
              .equals(other.supportsBotChats, supportsBotChats) &&
          const DeepCollectionEquality()
              .equals(other.supportsGroupChats, supportsGroupChats) &&
          const DeepCollectionEquality()
              .equals(other.supportsChannelChats, supportsChannelChats) &&
          const DeepCollectionEquality()
              .equals(other.requestWriteAccess, requestWriteAccess) &&
          const DeepCollectionEquality().equals(other.isAdded, isAdded) &&
          const DeepCollectionEquality()
              .equals(other.showInAttachmentMenu, showInAttachmentMenu) &&
          const DeepCollectionEquality()
              .equals(other.showInSideMenu, showInSideMenu) &&
          const DeepCollectionEquality().equals(
              other.showDisclaimerInSideMenu, showDisclaimerInSideMenu) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.nameColor, nameColor) &&
          const DeepCollectionEquality()
              .equals(other.defaultIcon, defaultIcon) &&
          const DeepCollectionEquality()
              .equals(other.iosStaticIcon, iosStaticIcon) &&
          const DeepCollectionEquality()
              .equals(other.iosAnimatedIcon, iosAnimatedIcon) &&
          const DeepCollectionEquality()
              .equals(other.iosSideMenuIcon, iosSideMenuIcon) &&
          const DeepCollectionEquality()
              .equals(other.androidIcon, androidIcon) &&
          const DeepCollectionEquality()
              .equals(other.androidSideMenuIcon, androidSideMenuIcon) &&
          const DeepCollectionEquality().equals(other.macosIcon, macosIcon) &&
          const DeepCollectionEquality()
              .equals(other.macosSideMenuIcon, macosSideMenuIcon) &&
          const DeepCollectionEquality().equals(other.iconColor, iconColor) &&
          const DeepCollectionEquality()
              .equals(other.webAppPlaceholder, webAppPlaceholder));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(supportsSelfChat),
        const DeepCollectionEquality().hash(supportsUserChats),
        const DeepCollectionEquality().hash(supportsBotChats),
        const DeepCollectionEquality().hash(supportsGroupChats),
        const DeepCollectionEquality().hash(supportsChannelChats),
        const DeepCollectionEquality().hash(requestWriteAccess),
        const DeepCollectionEquality().hash(isAdded),
        const DeepCollectionEquality().hash(showInAttachmentMenu),
        const DeepCollectionEquality().hash(showInSideMenu),
        const DeepCollectionEquality().hash(showDisclaimerInSideMenu),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(nameColor),
        const DeepCollectionEquality().hash(defaultIcon),
        const DeepCollectionEquality().hash(iosStaticIcon),
        const DeepCollectionEquality().hash(iosAnimatedIcon),
        const DeepCollectionEquality().hash(iosSideMenuIcon),
        const DeepCollectionEquality().hash(androidIcon),
        const DeepCollectionEquality().hash(androidSideMenuIcon),
        const DeepCollectionEquality().hash(macosIcon),
        const DeepCollectionEquality().hash(macosSideMenuIcon),
        const DeepCollectionEquality().hash(iconColor),
        const DeepCollectionEquality().hash(webAppPlaceholder)
      ]);
}
