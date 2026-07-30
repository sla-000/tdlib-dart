// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new member was accepted to the chat by an administrator
@immutable
class MessageChatJoinByRequest extends MessageContent {
  const MessageChatJoinByRequest();

  static const String constructor = 'messageChatJoinByRequest';

  static MessageChatJoinByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatJoinByRequest();
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
      (other.runtimeType == runtimeType && other is MessageChatJoinByRequest);

  @override
  int get hashCode => runtimeType.hashCode;
}
