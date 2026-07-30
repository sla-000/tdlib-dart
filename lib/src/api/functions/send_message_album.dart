// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends 2-10 messages grouped together into an album. Currently, only audio,
/// document, photo and video messages can be grouped into an album. Documents
/// and audio files can be only grouped in an album with messages of the same
/// type. Returns sent messages
/// Returns [Messages]
@immutable
class SendMessageAlbum extends TdFunction {
  const SendMessageAlbum({
    required this.chatId,
    this.topicId,
    this.replyTo,
    this.options,
    required this.inputMessageContents,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [topicId] Topic in which the messages will be sent; pass null if none
  final MessageTopic? topicId;

  /// [replyTo] Information about the message or story to be replied; pass null
  /// if none
  final InputMessageReplyTo? replyTo;

  /// [options] Options to be used to send the messages; pass null to use
  /// default options
  final MessageSendOptions? options;

  /// [inputMessageContents] Contents of messages to be sent. At most 10
  /// messages can be added to an album. All messages must have the same value
  /// of show_caption_above_media
  final List<InputMessageContent> inputMessageContents;

  static const String constructor = 'sendMessageAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'reply_to': replyTo?.toJson(),
        'options': options?.toJson(),
        'input_message_contents':
            inputMessageContents.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendMessageAlbum &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality().equals(other.options, options) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContents, inputMessageContents));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(options),
        const DeepCollectionEquality().hash(inputMessageContents)
      ]);
}
