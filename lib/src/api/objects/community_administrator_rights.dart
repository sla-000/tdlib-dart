// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes rights of the administrator in a community
@immutable
class CommunityAdministratorRights extends TdObject {
  const CommunityAdministratorRights({
    required this.canManageCommunity,
    required this.canChangeInfo,
    required this.canEditChatList,
    required this.canPromoteMembers,
    required this.canBanMembers,
  });

  /// [canManageCommunity] True, if the user is an administrator. Implied by any
  /// other privilege
  final bool canManageCommunity;

  /// [canChangeInfo] True, if the administrator can change the community name,
  /// photo, and other settings
  final bool canChangeInfo;

  /// [canEditChatList] True, if the user can change the chats added to the
  /// community
  final bool canEditChatList;

  /// [canPromoteMembers] True, if the administrator can add new administrators
  /// with a subset of their own privileges or demote administrators that were
  /// directly or indirectly promoted by them
  final bool canPromoteMembers;

  /// [canBanMembers] True, if the administrator can ban, or unban community
  /// members
  final bool canBanMembers;

  static const String constructor = 'communityAdministratorRights';

  static CommunityAdministratorRights? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityAdministratorRights(
      canManageCommunity: (json['can_manage_community'] as bool?) ?? false,
      canChangeInfo: (json['can_change_info'] as bool?) ?? false,
      canEditChatList: (json['can_edit_chat_list'] as bool?) ?? false,
      canPromoteMembers: (json['can_promote_members'] as bool?) ?? false,
      canBanMembers: (json['can_ban_members'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_manage_community': canManageCommunity,
        'can_change_info': canChangeInfo,
        'can_edit_chat_list': canEditChatList,
        'can_promote_members': canPromoteMembers,
        'can_ban_members': canBanMembers,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityAdministratorRights &&
          const DeepCollectionEquality()
              .equals(other.canManageCommunity, canManageCommunity) &&
          const DeepCollectionEquality()
              .equals(other.canChangeInfo, canChangeInfo) &&
          const DeepCollectionEquality()
              .equals(other.canEditChatList, canEditChatList) &&
          const DeepCollectionEquality()
              .equals(other.canPromoteMembers, canPromoteMembers) &&
          const DeepCollectionEquality()
              .equals(other.canBanMembers, canBanMembers));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(canManageCommunity),
        const DeepCollectionEquality().hash(canChangeInfo),
        const DeepCollectionEquality().hash(canEditChatList),
        const DeepCollectionEquality().hash(canPromoteMembers),
        const DeepCollectionEquality().hash(canBanMembers)
      ]);
}
