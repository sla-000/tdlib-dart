// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new background was set in the chat
@immutable
class MessageChatSetBackground extends MessageContent {
  const MessageChatSetBackground({
    required this.oldBackgroundMessageId,
    required this.background,
    required this.onlyForSelf,
  });

  /// [oldBackgroundMessageId] Identifier of the message with a previously set
  /// same background; 0 if none. Can be an identifier of a deleted message
  final int oldBackgroundMessageId;

  /// [background] The new background
  final ChatBackground background;

  /// [onlyForSelf] True, if the background was set only for self
  final bool onlyForSelf;

  static const String constructor = 'messageChatSetBackground';

  static MessageChatSetBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetBackground(
      oldBackgroundMessageId: json['old_background_message_id'] as int,
      background:
          ChatBackground.fromJson(json['background'] as Map<String, dynamic>?)!,
      onlyForSelf: json['only_for_self'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_background_message_id': oldBackgroundMessageId,
        'background': background.toJson(),
        'only_for_self': onlyForSelf,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatSetBackground &&
          const DeepCollectionEquality()
              .equals(other.oldBackgroundMessageId, oldBackgroundMessageId) &&
          const DeepCollectionEquality().equals(other.background, background) &&
          const DeepCollectionEquality()
              .equals(other.onlyForSelf, onlyForSelf));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldBackgroundMessageId),
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(onlyForSelf)
      ]);
}
