import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      canManageCommunity: json['can_manage_community'] as bool,
      canChangeInfo: json['can_change_info'] as bool,
      canEditChatList: json['can_edit_chat_list'] as bool,
      canPromoteMembers: json['can_promote_members'] as bool,
      canBanMembers: json['can_ban_members'] as bool,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
