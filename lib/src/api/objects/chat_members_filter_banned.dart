// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns users banned from the chat; can be used only by administrators in
/// a supergroup or in a channel
@immutable
class ChatMembersFilterBanned extends ChatMembersFilter {
  const ChatMembersFilterBanned();

  static const String constructor = 'chatMembersFilterBanned';

  static ChatMembersFilterBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterBanned();
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
      (other.runtimeType == runtimeType && other is ChatMembersFilterBanned);

  @override
  int get hashCode => runtimeType.hashCode;
}
