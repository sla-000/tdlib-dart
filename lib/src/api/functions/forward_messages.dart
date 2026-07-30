// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Forwards previously sent messages. Returns the forwarded messages in the
/// same order as the message identifiers passed in message_ids. If a message
/// can't be forwarded, null will be returned instead of the message
/// Returns [Messages]
@immutable
class ForwardMessages extends TdFunction {
  const ForwardMessages({
    required this.chatId,
    this.topicId,
    required this.fromChatId,
    required this.messageIds,
    this.options,
    required this.sendCopy,
    required this.removeCaption,
  });

  /// [chatId] Identifier of the chat to which to forward messages
  final int chatId;

  /// [topicId] Topic in which the messages will be forwarded; message threads
  /// aren't supported; pass null if none
  final MessageTopic? topicId;

  /// [fromChatId] Identifier of the chat from which to forward messages
  final int fromChatId;

  /// [messageIds] Identifiers of the messages to forward. Message identifiers
  /// must be in a strictly increasing order. At most 100 messages can be
  /// forwarded simultaneously. A message can be forwarded only if
  /// messageProperties.can_be_forwarded
  final List<int> messageIds;

  /// [options] Options to be used to send the messages; pass null to use
  /// default options
  final MessageSendOptions? options;

  /// [sendCopy] Pass true to copy content of the messages without reference to
  /// the original sender. Always true if the messages are forwarded to a secret
  /// chat or are local. Use messageProperties.can_be_copied and
  /// messageProperties.can_be_copied_to_secret_chat to check whether the
  /// message is suitable
  final bool sendCopy;

  /// [removeCaption] Pass true to remove media captions of message copies.
  /// Ignored if send_copy is false
  final bool removeCaption;

  static const String constructor = 'forwardMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'from_chat_id': fromChatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'options': options?.toJson(),
        'send_copy': sendCopy,
        'remove_caption': removeCaption,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ForwardMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.fromChatId, fromChatId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds) &&
          const DeepCollectionEquality().equals(other.options, options) &&
          const DeepCollectionEquality().equals(other.sendCopy, sendCopy) &&
          const DeepCollectionEquality()
              .equals(other.removeCaption, removeCaption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(fromChatId),
        const DeepCollectionEquality().hash(messageIds),
        const DeepCollectionEquality().hash(options),
        const DeepCollectionEquality().hash(sendCopy),
        const DeepCollectionEquality().hash(removeCaption)
      ]);
}
