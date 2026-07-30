// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a user
@immutable
class User extends TdObject {
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.usernames,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    this.upgradedGiftColors,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isCloseFriend,
    this.verificationStatus,
    required this.isPremium,
    required this.isSupport,
    this.restrictionInfo,
    this.activeStoryState,
    required this.restrictsNewChats,
    required this.paidMessageStarCount,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
    required this.addedToAttachmentMenu,
  });

  /// [id] User identifier
  final int id;

  /// [firstName] First name of the user
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [usernames] Usernames of the user; may be null
  final Usernames? usernames;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [status] Current online status of the user
  final UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// [accentColorId] Identifier of the accent color for name, and backgrounds
  /// of profile photo, reply header, and link preview
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// [upgradedGiftColors] Color scheme based on an upgraded gift to be used for
  /// the user instead of accent_color_id and background_custom_emoji_id; may be
  /// null if none
  final UpgradedGiftColors? upgradedGiftColors;

  /// [profileAccentColorId] Identifier of the accent color for the user's
  /// profile; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the background of the user's profile; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [emojiStatus] Emoji status to be shown instead of the default Telegram
  /// Premium badge; may be null
  final EmojiStatus? emojiStatus;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the
  /// current user is a contact of the user
  final bool isMutualContact;

  /// [isCloseFriend] The user is a close friend of the current user; implies
  /// that the user is a contact
  final bool isCloseFriend;

  /// [verificationStatus] Information about verification status of the user;
  /// may be null if none
  final VerificationStatus? verificationStatus;

  /// [isPremium] True, if the user is a Telegram Premium user
  final bool isPremium;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionInfo] Information about restrictions that must be applied to
  /// the corresponding private chat; may be null if none
  final RestrictionInfo? restrictionInfo;

  /// [activeStoryState] State of active stories of the user; may be null if the
  /// user has no active stories
  final ActiveStoryState? activeStoryState;

  /// [restrictsNewChats] True, if the user may restrict new chats with
  /// non-contacts. Use canSendMessageToUser to check whether the current user
  /// can message the user or try to create a chat with them
  final bool restrictsNewChats;

  /// [paidMessageStarCount] Number of Telegram Stars that must be paid by
  /// general user for each sent message to the user. If positive and
  /// userFullInfo is unknown, use canSendMessageToUser to check whether the
  /// current user must pay
  final int paidMessageStarCount;

  /// [haveAccess] If false, the user is inaccessible, and the only information
  /// known about the user is inside this class. Identifier of the user can't be
  /// passed to any method
  final bool haveAccess;

  /// [type] Type of the user
  final UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to
  /// bots
  final String languageCode;

  /// [addedToAttachmentMenu] True, if the user added the current bot to
  /// attachment menu; only available to bots
  final bool addedToAttachmentMenu;

  static const String constructor = 'user';

  static User? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return User(
      id: (json['id'] as int?) ?? 0,
      firstName: (json['first_name'] as String?) ?? '',
      lastName: (json['last_name'] as String?) ?? '',
      usernames: Usernames.fromJson(json['usernames'] as Map<String, dynamic>?),
      phoneNumber: (json['phone_number'] as String?) ?? '',
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
      profilePhoto:
          ProfilePhoto.fromJson(json['profile_photo'] as Map<String, dynamic>?),
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
      emojiStatus:
          EmojiStatus.fromJson(json['emoji_status'] as Map<String, dynamic>?),
      isContact: (json['is_contact'] as bool?) ?? false,
      isMutualContact: (json['is_mutual_contact'] as bool?) ?? false,
      isCloseFriend: (json['is_close_friend'] as bool?) ?? false,
      verificationStatus: VerificationStatus.fromJson(
          json['verification_status'] as Map<String, dynamic>?),
      isPremium: (json['is_premium'] as bool?) ?? false,
      isSupport: (json['is_support'] as bool?) ?? false,
      restrictionInfo: RestrictionInfo.fromJson(
          json['restriction_info'] as Map<String, dynamic>?),
      activeStoryState: ActiveStoryState.fromJson(
          json['active_story_state'] as Map<String, dynamic>?),
      restrictsNewChats: (json['restricts_new_chats'] as bool?) ?? false,
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
      haveAccess: (json['have_access'] as bool?) ?? false,
      type: UserType.fromJson(json['type'] as Map<String, dynamic>?)!,
      languageCode: (json['language_code'] as String?) ?? '',
      addedToAttachmentMenu:
          (json['added_to_attachment_menu'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'usernames': usernames?.toJson(),
        'phone_number': phoneNumber,
        'status': status.toJson(),
        'profile_photo': profilePhoto?.toJson(),
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'upgraded_gift_colors': upgradedGiftColors?.toJson(),
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        'emoji_status': emojiStatus?.toJson(),
        'is_contact': isContact,
        'is_mutual_contact': isMutualContact,
        'is_close_friend': isCloseFriend,
        'verification_status': verificationStatus?.toJson(),
        'is_premium': isPremium,
        'is_support': isSupport,
        'restriction_info': restrictionInfo?.toJson(),
        'active_story_state': activeStoryState?.toJson(),
        'restricts_new_chats': restrictsNewChats,
        'paid_message_star_count': paidMessageStarCount,
        'have_access': haveAccess,
        'type': type.toJson(),
        'language_code': languageCode,
        'added_to_attachment_menu': addedToAttachmentMenu,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is User &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.firstName, firstName) &&
          const DeepCollectionEquality().equals(other.lastName, lastName) &&
          const DeepCollectionEquality().equals(other.usernames, usernames) &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.status, status) &&
          const DeepCollectionEquality()
              .equals(other.profilePhoto, profilePhoto) &&
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
              .equals(other.emojiStatus, emojiStatus) &&
          const DeepCollectionEquality().equals(other.isContact, isContact) &&
          const DeepCollectionEquality()
              .equals(other.isMutualContact, isMutualContact) &&
          const DeepCollectionEquality()
              .equals(other.isCloseFriend, isCloseFriend) &&
          const DeepCollectionEquality()
              .equals(other.verificationStatus, verificationStatus) &&
          const DeepCollectionEquality().equals(other.isPremium, isPremium) &&
          const DeepCollectionEquality().equals(other.isSupport, isSupport) &&
          const DeepCollectionEquality()
              .equals(other.restrictionInfo, restrictionInfo) &&
          const DeepCollectionEquality()
              .equals(other.activeStoryState, activeStoryState) &&
          const DeepCollectionEquality()
              .equals(other.restrictsNewChats, restrictsNewChats) &&
          const DeepCollectionEquality()
              .equals(other.paidMessageStarCount, paidMessageStarCount) &&
          const DeepCollectionEquality().equals(other.haveAccess, haveAccess) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode) &&
          const DeepCollectionEquality()
              .equals(other.addedToAttachmentMenu, addedToAttachmentMenu));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(usernames),
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(profilePhoto),
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(backgroundCustomEmojiId),
        const DeepCollectionEquality().hash(upgradedGiftColors),
        const DeepCollectionEquality().hash(profileAccentColorId),
        const DeepCollectionEquality().hash(profileBackgroundCustomEmojiId),
        const DeepCollectionEquality().hash(emojiStatus),
        const DeepCollectionEquality().hash(isContact),
        const DeepCollectionEquality().hash(isMutualContact),
        const DeepCollectionEquality().hash(isCloseFriend),
        const DeepCollectionEquality().hash(verificationStatus),
        const DeepCollectionEquality().hash(isPremium),
        const DeepCollectionEquality().hash(isSupport),
        const DeepCollectionEquality().hash(restrictionInfo),
        const DeepCollectionEquality().hash(activeStoryState),
        const DeepCollectionEquality().hash(restrictsNewChats),
        const DeepCollectionEquality().hash(paidMessageStarCount),
        const DeepCollectionEquality().hash(haveAccess),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(languageCode),
        const DeepCollectionEquality().hash(addedToAttachmentMenu)
      ]);
}
