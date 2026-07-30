// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is an invite link for a basic group
@immutable
class InviteLinkChatTypeBasicGroup extends InviteLinkChatType {
  const InviteLinkChatTypeBasicGroup();

  static const String constructor = 'inviteLinkChatTypeBasicGroup';

  static InviteLinkChatTypeBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeBasicGroup();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InviteLinkChatTypeBasicGroup);

  @override
  int get hashCode => runtimeType.hashCode;
}
