// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message ephemeral content has changed
@immutable
class UpdateMessageEphemeralContent extends Update {
  const UpdateMessageEphemeralContent({
    required this.chatId,
    required this.messageId,
    this.ephemeralContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [ephemeralContent] New ephemeral content of the message; may be null if
  /// none
  final EphemeralMessageContent? ephemeralContent;

  static const String constructor = 'updateMessageEphemeralContent';

  static UpdateMessageEphemeralContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageEphemeralContent(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      ephemeralContent: EphemeralMessageContent.fromJson(
          json['ephemeral_content'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'ephemeral_content': ephemeralContent?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageEphemeralContent &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.ephemeralContent, ephemeralContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(ephemeralContent)
      ]);
}
