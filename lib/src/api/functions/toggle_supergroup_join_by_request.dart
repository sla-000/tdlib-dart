import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
