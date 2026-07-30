// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat is a recently created group chat to which new members can be
/// invited
@immutable
class ChatActionBarInviteMembers extends ChatActionBar {
  const ChatActionBarInviteMembers();

  static const String constructor = 'chatActionBarInviteMembers';

  static ChatActionBarInviteMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarInviteMembers();
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
      (other.runtimeType == runtimeType && other is ChatActionBarInviteMembers);

  @override
  int get hashCode => runtimeType.hashCode;
}
