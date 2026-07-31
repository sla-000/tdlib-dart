// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  /// following types: inputMessageAnimation, inputMessageAudio,
  /// inputMessageDocument, non-live inputMessageLocation, inputMessagePhoto,
  /// inputMessageVenue, or inputMessageVideo without caption
  final InputMessageContent? media;

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
              .map((item) =>
                  InputPollOption.fromJson(item as Map<String, dynamic>?))
              .toList()),
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?),
      media:
          InputMessageContent.fromJson(json['media'] as Map<String, dynamic>?),
      isAnonymous: (json['is_anonymous'] as bool?) ?? false,
      allowsMultipleAnswers:
          (json['allows_multiple_answers'] as bool?) ?? false,
      allowsRevoting: (json['allows_revoting'] as bool?) ?? false,
      membersOnly: (json['members_only'] as bool?) ?? false,
      countryCodes: List<String>.from(
          ((json['country_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
      shuffleOptions: (json['shuffle_options'] as bool?) ?? false,
      hideResultsUntilCloses:
          (json['hide_results_until_closes'] as bool?) ?? false,
      type: InputPollType.fromJson(json['type'] as Map<String, dynamic>?)!,
      openPeriod: (json['open_period'] as int?) ?? 0,
      closeDate: (json['close_date'] as int?) ?? 0,
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessagePoll &&
          const DeepCollectionEquality().equals(other.question, question) &&
          const DeepCollectionEquality().equals(other.options, options) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality().equals(other.media, media) &&
          const DeepCollectionEquality()
              .equals(other.isAnonymous, isAnonymous) &&
          const DeepCollectionEquality()
              .equals(other.allowsMultipleAnswers, allowsMultipleAnswers) &&
          const DeepCollectionEquality()
              .equals(other.allowsRevoting, allowsRevoting) &&
          const DeepCollectionEquality()
              .equals(other.membersOnly, membersOnly) &&
          const DeepCollectionEquality()
              .equals(other.countryCodes, countryCodes) &&
          const DeepCollectionEquality()
              .equals(other.shuffleOptions, shuffleOptions) &&
          const DeepCollectionEquality()
              .equals(other.hideResultsUntilCloses, hideResultsUntilCloses) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.openPeriod, openPeriod) &&
          const DeepCollectionEquality().equals(other.closeDate, closeDate) &&
          const DeepCollectionEquality().equals(other.isClosed, isClosed));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(question),
        const DeepCollectionEquality().hash(options),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(media),
        const DeepCollectionEquality().hash(isAnonymous),
        const DeepCollectionEquality().hash(allowsMultipleAnswers),
        const DeepCollectionEquality().hash(allowsRevoting),
        const DeepCollectionEquality().hash(membersOnly),
        const DeepCollectionEquality().hash(countryCodes),
        const DeepCollectionEquality().hash(shuffleOptions),
        const DeepCollectionEquality().hash(hideResultsUntilCloses),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(openPeriod),
        const DeepCollectionEquality().hash(closeDate),
        const DeepCollectionEquality().hash(isClosed)
      ]);
}
