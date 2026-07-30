// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new member joined the chat
@immutable
class ChatEventMemberJoined extends ChatEventAction {
  const ChatEventMemberJoined();

  static const String constructor = 'chatEventMemberJoined';

  static ChatEventMemberJoined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatEventMemberJoined();
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
      (other.runtimeType == runtimeType && other is ChatEventMemberJoined);

  @override
  int get hashCode => runtimeType.hashCode;
}
