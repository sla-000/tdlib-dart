// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether all users directly joining the supergroup need to be
/// approved by supergroup administrators; requires can_restrict_members
/// administrator right
/// Returns [Ok]
@immutable
class ToggleSupergroupJoinByRequest extends TdFunction {
  const ToggleSupergroupJoinByRequest({
    required this.supergroupId,
    required this.joinByRequest,
    required this.guardBotUserId,
    required this.applyToInviteLinks,
  });

  /// [supergroupId] Identifier of the supergroup that isn't a broadcast group
  /// and isn't a channel direct message group
  final int supergroupId;

  /// [joinByRequest] New value of join_by_request
  final bool joinByRequest;

  /// [guardBotUserId] Identifier of the bot which will be the guard bot in the
  /// group; pass 0 if none; ignored if join_by_request == false. The bot must
  /// have administrator privileges and can_invite_users right in the supergroup
  /// chat, and must have userTypeBot.is_guard == true
  final int guardBotUserId;

  /// [applyToInviteLinks] Pass true to apply the change to the existing invite
  /// links, including primary links
  final bool applyToInviteLinks;

  static const String constructor = 'toggleSupergroupJoinByRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'join_by_request': joinByRequest,
        'guard_bot_user_id': guardBotUserId,
        'apply_to_invite_links': applyToInviteLinks,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSupergroupJoinByRequest &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality()
              .equals(other.joinByRequest, joinByRequest) &&
          const DeepCollectionEquality()
              .equals(other.guardBotUserId, guardBotUserId) &&
          const DeepCollectionEquality()
              .equals(other.applyToInviteLinks, applyToInviteLinks));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(joinByRequest),
        const DeepCollectionEquality().hash(guardBotUserId),
        const DeepCollectionEquality().hash(applyToInviteLinks)
      ]);
}
