import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a poll
@immutable
class MessagePoll extends MessageContent {
  const MessagePoll({
    required this.poll,
    required this.description,
    this.media,
    required this.canAddOption,
  });

  /// [poll] Information about the poll
  final Poll poll;

  /// param_[description] Description of the poll
  final FormattedText description;

  /// [media] Media attached to the poll; may be null if none. If present,
  /// currently, can be only of the types pollMediaAnimation, pollMediaAudio,
  /// pollMediaDocument, pollMediaLocation, pollMediaPhoto, pollMediaVenue, or
  /// pollMediaVideo
  final PollMedia? media;

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
      media: PollMedia.fromJson(json['media'] as Map<String, dynamic>?),
      canAddOption: json['can_add_option'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poll': poll.toJson(),
        'description': description.toJson(),
        'media': media?.toJson(),
        'can_add_option': canAddOption,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
