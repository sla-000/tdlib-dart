// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a poll
@immutable
class MessagePoll extends MessageContent {
  const MessagePoll({
    required this.poll,
    required this.description,
    required this.media,
    required this.canAddOption,
  });

  /// [poll] Information about the poll
  final Poll poll;

  /// param_[description] Description of the poll
  final FormattedText description;

  /// [media] Media attached to the poll. Currently, can be only of the types
  /// messageAnimation, messageAudio, messageDocument, messageLocation,
  /// messagePhoto, messageVenue, or messageVideo without caption
  final MessageContent media;

  /// [canAddOption] True, if an option can be added to the poll using
  /// addPollOption
  final bool canAddOption;

  static const String constructor = 'messagePoll';

  static MessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePoll(
      poll: Poll.fromJson(json['poll'] as Map<String, dynamic>?)!,
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?)!,
      media: MessageContent.fromJson(json['media'] as Map<String, dynamic>?)!,
      canAddOption: (json['can_add_option'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poll': poll.toJson(),
        'description': description.toJson(),
        'media': media.toJson(),
        'can_add_option': canAddOption,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePoll &&
          const DeepCollectionEquality().equals(other.poll, poll) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality().equals(other.media, media) &&
          const DeepCollectionEquality()
              .equals(other.canAddOption, canAddOption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(poll),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(media),
        const DeepCollectionEquality().hash(canAddOption)
      ]);
}
