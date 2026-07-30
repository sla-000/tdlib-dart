// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a list of chats
@immutable
abstract class ChatList extends TdObject {
  const ChatList();

  static const String constructor = 'chatList';

  /// Inherited by:
  /// [ChatListArchive]
  /// [ChatListFolder]
  /// [ChatListMain]
  static ChatList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatListArchive.constructor:
        return ChatListArchive.fromJson(json);
      case ChatListFolder.constructor:
        return ChatListFolder.fromJson(json);
      case ChatListMain.constructor:
        return ChatListMain.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ChatList);

  @override
  int get hashCode => runtimeType.hashCode;
}
