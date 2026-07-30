// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The information about interactions with a message has changed
@immutable
class UpdateMessageInteractionInfo extends Update {
  const UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [interactionInfo] New information about interactions with the message; may
  /// be null
  final MessageInteractionInfo? interactionInfo;

  static const String constructor = 'updateMessageInteractionInfo';

  static UpdateMessageInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageInteractionInfo(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      interactionInfo: MessageInteractionInfo.fromJson(
          json['interaction_info'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'interaction_info': interactionInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageInteractionInfo &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.interactionInfo, interactionInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(interactionInfo)
      ]);
}
