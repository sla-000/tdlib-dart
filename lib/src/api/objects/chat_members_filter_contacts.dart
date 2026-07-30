// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns contacts of the user
@immutable
class ChatMembersFilterContacts extends ChatMembersFilter {
  const ChatMembersFilterContacts();

  static const String constructor = 'chatMembersFilterContacts';

  static ChatMembersFilterContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterContacts();
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
      (other.runtimeType == runtimeType && other is ChatMembersFilterContacts);

  @override
  int get hashCode => runtimeType.hashCode;
}
