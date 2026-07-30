// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user or the chat is not a chat member
@immutable
class ChatMemberStatusLeft extends ChatMemberStatus {
  const ChatMemberStatusLeft();

  static const String constructor = 'chatMemberStatusLeft';

  static ChatMemberStatusLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMemberStatusLeft();
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
      (other.runtimeType == runtimeType && other is ChatMemberStatusLeft);

  @override
  int get hashCode => runtimeType.hashCode;
}
