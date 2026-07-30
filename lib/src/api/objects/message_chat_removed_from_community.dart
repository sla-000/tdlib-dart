import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat was removed from a community
@immutable
class MessageChatRemovedFromCommunity extends MessageContent {
  const MessageChatRemovedFromCommunity();

  static const String constructor = 'messageChatRemovedFromCommunity';

  static MessageChatRemovedFromCommunity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatRemovedFromCommunity();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
