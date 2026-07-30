// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of chat lists
@immutable
class ChatLists extends TdObject {
  const ChatLists({
    required this.chatLists,
  });

  /// [chatLists] List of chat lists
  final List<ChatList> chatLists;

  static const String constructor = 'chatLists';

  static ChatLists? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLists(
      chatLists: List<ChatList>.from(
          ((json['chat_lists'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatList.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_lists': chatLists.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatLists &&
          const DeepCollectionEquality().equals(other.chatLists, chatLists));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatLists)]);
}
