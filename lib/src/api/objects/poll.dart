import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a poll
@immutable
class Poll extends TdObject {
  const Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterIds,
    required this.canGetVoters,
    required this.canSeeResults,
    required this.isAnonymous,
    required this.allowsMultipleAnswers,
    required this.allowsRevoting,
    required this.membersOnly,
    required this.countryCodes,
    required this.optionOrder,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
    this.voteRestrictionReason,
  });

  /// [id] Unique poll identifier
  final int id;

  /// [question] Poll question; 1-300 characters; may contain only custom emoji
  /// entities
  final FormattedText question;

  /// [options] List of poll answer options
  final List<PollOption> options;

  /// [totalVoterCount] Total number of voters, participating in the poll
  final int totalVoterCount;

  /// [recentVoterIds] Identifiers of recent voters, if the poll is
  /// non-anonymous and poll results are available
  final List<MessageSender> recentVoterIds;

  /// [canGetVoters] True, if the current user can get voters in the poll using
  /// getPollVoters
  final bool canGetVoters;

  /// [canSeeResults] True, if the current user can see results of the poll
  final bool canSeeResults;

  /// [isAnonymous] True, if the poll is anonymous
  final bool isAnonymous;

  /// [allowsMultipleAnswers] True, if multiple answer options can be chosen
  /// simultaneously
  final bool allowsMultipleAnswers;

  /// [allowsRevoting] True, if the poll can be answered multiple times
  final bool allowsRevoting;

  /// [membersOnly] True, if only the users that are members of the chat for
  /// more than a day will be able to vote
  final bool membersOnly;

  /// [countryCodes] The list of two-letter ISO 3166-1 alpha-2 codes of
  /// countries, users from which will be able to vote. If empty, then all users
  /// can participate in the poll
  final List<String> countryCodes;

  /// [optionOrder] The list of 0-based poll identifiers in which the options of
  /// the poll must be shown; empty if the order of options must not be changed
  final List<int> optionOrder;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in
  /// seconds
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will
  /// automatically be closed
  final int closeDate;

  /// [isClosed] True, if the poll is closed
  final bool isClosed;

  /// [voteRestrictionReason] The reason describing, why the current user can't
  /// vote in the poll; may be null if the user can vote in the poll
  final PollVoteRestrictionReason? voteRestrictionReason;

  static const String constructor = 'poll';

  static Poll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Poll(
      id: int.tryParse(json['id']) ?? 0,
      question:
          FormattedText.fromJson(json['question'] as Map<String, dynamic>?)!,
      options: List<PollOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PollOption.fromJson(item))
              .toList()),
      totalVoterCount: json['total_voter_count'] as int,
      recentVoterIds: List<MessageSender>.from(
          ((json['recent_voter_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageSender.fromJson(item))
              .toList()),
      canGetVoters: json['can_get_voters'] as bool,
      canSeeResults: json['can_see_results'] as bool,
      isAnonymous: json['is_anonymous'] as bool,
      allowsMultipleAnswers: json['allows_multiple_answers'] as bool,
      allowsRevoting: json['allows_revoting'] as bool,
      membersOnly: json['members_only'] as bool,
      countryCodes: List<String>.from(
          ((json['country_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      optionOrder: List<int>.from(
          ((json['option_order'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      type: PollType.fromJson(json['type'] as Map<String, dynamic>?)!,
      openPeriod: json['open_period'] as int,
      closeDate: json['close_date'] as int,
      isClosed: json['is_closed'] as bool,
      voteRestrictionReason: PollVoteRestrictionReason.fromJson(
          json['vote_restriction_reason'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'question': question.toJson(),
        'options': options.map((item) => item.toJson()).toList(),
        'total_voter_count': totalVoterCount,
        'recent_voter_ids':
            recentVoterIds.map((item) => item.toJson()).toList(),
        'can_get_voters': canGetVoters,
        'can_see_results': canSeeResults,
        'is_anonymous': isAnonymous,
        'allows_multiple_answers': allowsMultipleAnswers,
        'allows_revoting': allowsRevoting,
        'members_only': membersOnly,
        'country_codes': countryCodes.map((item) => item).toList(),
        'option_order': optionOrder.map((item) => item).toList(),
        'type': type.toJson(),
        'open_period': openPeriod,
        'close_date': closeDate,
        'is_closed': isClosed,
        'vote_restriction_reason': voteRestrictionReason?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
