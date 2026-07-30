import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a poll. Polls can't be sent to secret chats and channel
/// direct messages chats. Polls can be sent to a private chat only if the
/// chat is a chat with a bot or the Saved Messages chat
@immutable
class InputMessagePoll extends InputMessageContent {
  const InputMessagePoll({
    required this.question,
    required this.options,
    this.description,
    this.media,
    required this.isAnonymous,
    required this.allowsMultipleAnswers,
    required this.allowsRevoting,
    required this.membersOnly,
    required this.countryCodes,
    required this.shuffleOptions,
    required this.hideResultsUntilCloses,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    this.isClosed,
  });

  /// [question] Poll question; 1-255 characters (up to 300 characters for
  /// bots). Only custom emoji entities are allowed to be added and only by
  /// Premium users
  final FormattedText question;

  /// [options] List of poll answer options;
  /// 1-getOption("poll_answer_count_max") options
  final List<InputPollOption> options;

  /// param_[description] Poll description; pass null to use an empty
  /// description; 0-getOption("message_caption_length_max") characters
  final FormattedText? description;

  /// [media] Media attached to the poll; pass null if none. Must be one of the
  /// following types: inputPollMediaAnimation, inputPollMediaAudio,
  /// inputPollMediaDocument, inputPollMediaLocation, inputPollMediaPhoto,
  /// inputPollMediaVenue, or inputPollMediaVideo without caption
  final InputPollMedia? media;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls
  /// can't be sent or forwarded to channels
  final bool isAnonymous;

  /// [allowsMultipleAnswers] True, if multiple answer options can be chosen
  /// simultaneously
  final bool allowsMultipleAnswers;

  /// [allowsRevoting] True, if the poll can be answered multiple times
  final bool allowsRevoting;

  /// [membersOnly] True, if only the users that are members of the chat for
  /// more than a day will be able to vote; for channel chats only
  final bool membersOnly;

  /// [countryCodes] The list of two-letter ISO 3166-1 alpha-2 codes of
  /// countries, users from which will be able to vote; for channel chats only.
  /// If empty, then all users can participate in the poll. There can be up to
  /// getOption("poll_country_count_max") chosen countries
  final List<String> countryCodes;

  /// [shuffleOptions] True, if poll options must be shown in a fixed random
  /// order
  final bool shuffleOptions;

  /// [hideResultsUntilCloses] True, if the poll results will appear only after
  /// the poll closes
  final bool hideResultsUntilCloses;

  /// [type] Type of the poll
  final InputPollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in
  /// seconds; 0-getOption("poll_open_period_max"); pass 0 if not specified
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will
  /// automatically be closed; must be 0-getOption("poll_open_period_max")
  /// seconds in the future; pass 0 if not specified
  final int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots
  /// only
  final bool? isClosed;

  static const String constructor = 'inputMessagePoll';

  static InputMessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePoll(
      question:
          FormattedText.fromJson(json['question'] as Map<String, dynamic>?)!,
      options: List<InputPollOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputPollOption.fromJson(item))
              .toList()),
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?),
      media: InputPollMedia.fromJson(json['media'] as Map<String, dynamic>?),
      isAnonymous: json['is_anonymous'] as bool,
      allowsMultipleAnswers: json['allows_multiple_answers'] as bool,
      allowsRevoting: json['allows_revoting'] as bool,
      membersOnly: json['members_only'] as bool,
      countryCodes: List<String>.from(
          ((json['country_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      shuffleOptions: json['shuffle_options'] as bool,
      hideResultsUntilCloses: json['hide_results_until_closes'] as bool,
      type: InputPollType.fromJson(json['type'] as Map<String, dynamic>?)!,
      openPeriod: json['open_period'] as int,
      closeDate: json['close_date'] as int,
      isClosed: json['is_closed'] as bool?,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'question': question.toJson(),
        'options': options.map((item) => item.toJson()).toList(),
        'description': description?.toJson(),
        'media': media?.toJson(),
        'is_anonymous': isAnonymous,
        'allows_multiple_answers': allowsMultipleAnswers,
        'allows_revoting': allowsRevoting,
        'members_only': membersOnly,
        'country_codes': countryCodes.map((item) => item).toList(),
        'shuffle_options': shuffleOptions,
        'hide_results_until_closes': hideResultsUntilCloses,
        'type': type.toJson(),
        'open_period': openPeriod,
        'close_date': closeDate,
        'is_closed': isClosed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
