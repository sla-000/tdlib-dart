// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A main list of chats
@immutable
class ChatListMain extends ChatList {
  const ChatListMain();

  static const String constructor = 'chatListMain';

  static ChatListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListMain();
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
      (other.runtimeType == runtimeType && other is ChatListMain);

  @override
  int get hashCode => runtimeType.hashCode;
}
