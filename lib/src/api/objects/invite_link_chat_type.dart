// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the type of chat to which points an invite link
@immutable
abstract class InviteLinkChatType extends TdObject {
  const InviteLinkChatType();

  static const String constructor = 'inviteLinkChatType';

  /// Inherited by:
  /// [InviteLinkChatTypeBasicGroup]
  /// [InviteLinkChatTypeChannel]
  /// [InviteLinkChatTypeSupergroup]
  static InviteLinkChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InviteLinkChatTypeBasicGroup.constructor:
        return InviteLinkChatTypeBasicGroup.fromJson(json);
      case InviteLinkChatTypeChannel.constructor:
        return InviteLinkChatTypeChannel.fromJson(json);
      case InviteLinkChatTypeSupergroup.constructor:
        return InviteLinkChatTypeSupergroup.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InviteLinkChatType);

  @override
  int get hashCode => runtimeType.hashCode;
}
