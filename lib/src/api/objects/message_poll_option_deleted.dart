// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with information about a deleted poll option
@immutable
class MessagePollOptionDeleted extends MessageContent {
  const MessagePollOptionDeleted({
    required this.pollMessageId,
    required this.optionId,
    required this.text,
  });

  /// [pollMessageId] Identifier of the message with the poll; can be an
  /// identifier of a deleted message or 0
  final int pollMessageId;

  /// [optionId] Identifier of the deleted option in the poll
  final String optionId;

  /// [text] Text of the option; 1-100 characters; may contain only custom emoji
  /// entities
  final FormattedText text;

  static const String constructor = 'messagePollOptionDeleted';

  static MessagePollOptionDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePollOptionDeleted(
      pollMessageId: json['poll_message_id'] as int,
      optionId: json['option_id'] as String,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poll_message_id': pollMessageId,
        'option_id': optionId,
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePollOptionDeleted &&
          const DeepCollectionEquality()
              .equals(other.pollMessageId, pollMessageId) &&
          const DeepCollectionEquality().equals(other.optionId, optionId) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(pollMessageId),
        const DeepCollectionEquality().hash(optionId),
        const DeepCollectionEquality().hash(text)
      ]);
}
