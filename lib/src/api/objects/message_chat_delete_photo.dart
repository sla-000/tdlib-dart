// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A deleted chat photo
@immutable
class MessageChatDeletePhoto extends MessageContent {
  const MessageChatDeletePhoto();

  static const String constructor = 'messageChatDeletePhoto';

  static MessageChatDeletePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatDeletePhoto();
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
      (other.runtimeType == runtimeType && other is MessageChatDeletePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
