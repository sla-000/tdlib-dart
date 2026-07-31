// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes one answer option of a poll
@immutable
class PollOption extends TdObject {
  const PollOption({
    required this.id,
    required this.text,
    required this.media,
    required this.voterCount,
    required this.votePercentage,
    required this.recentVoterIds,
    required this.isChosen,
    required this.isBeingChosen,
    this.author,
    required this.additionDate,
  });

  /// [id] Unique identifier of the option in the poll
  final String id;

  /// [text] Option text; 1-100 characters; may contain only custom emoji
  /// entities
  final FormattedText text;

  /// [media] Option media. Currently, can be only of the types
  /// messageAnimation, messageLocation, messagePhoto, messageSticker,
  /// messageVenue, or messageVideo without caption
  final MessageContent media;

  /// [voterCount] Number of voters for this option, available only for closed
  /// or voted polls, or if the current user is the creator of the poll
  final int voterCount;

  /// [votePercentage] The percentage of votes for this option; 0-100
  final int votePercentage;

  /// [recentVoterIds] Identifiers of recent voters for the option, if the poll
  /// is non-anonymous and poll results are available
  final List<MessageSender> recentVoterIds;

  /// [isChosen] True, if the option was chosen by the user
  final bool isChosen;

  /// [isBeingChosen] True, if the option is being chosen by a pending
  /// setPollAnswer request
  final bool isBeingChosen;

  /// [author] Identifier of the user or chat who added the option; may be null
  /// if the option existed from creation of the poll
  final MessageSender? author;

  /// [additionDate] Point in time (Unix timestamp) when the option was added; 0
  /// if the option existed from creation of the poll
  final int additionDate;

  static const String constructor = 'pollOption';

  static PollOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollOption(
      id: (json['id'] as String?) ?? '',
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      media: MessageContent.fromJson(json['media'] as Map<String, dynamic>?)!,
      voterCount: (json['voter_count'] as int?) ?? 0,
      votePercentage: (json['vote_percentage'] as int?) ?? 0,
      recentVoterIds: List<MessageSender>.from(((json['recent_voter_ids']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => MessageSender.fromJson(item as Map<String, dynamic>?))
          .toList()),
      isChosen: (json['is_chosen'] as bool?) ?? false,
      isBeingChosen: (json['is_being_chosen'] as bool?) ?? false,
      author: MessageSender.fromJson(json['author'] as Map<String, dynamic>?),
      additionDate: (json['addition_date'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text.toJson(),
        'media': media.toJson(),
        'voter_count': voterCount,
        'vote_percentage': votePercentage,
        'recent_voter_ids':
            recentVoterIds.map((item) => item.toJson()).toList(),
        'is_chosen': isChosen,
        'is_being_chosen': isBeingChosen,
        'author': author?.toJson(),
        'addition_date': additionDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollOption &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.media, media) &&
          const DeepCollectionEquality().equals(other.voterCount, voterCount) &&
          const DeepCollectionEquality()
              .equals(other.votePercentage, votePercentage) &&
          const DeepCollectionEquality()
              .equals(other.recentVoterIds, recentVoterIds) &&
          const DeepCollectionEquality().equals(other.isChosen, isChosen) &&
          const DeepCollectionEquality()
              .equals(other.isBeingChosen, isBeingChosen) &&
          const DeepCollectionEquality().equals(other.author, author) &&
          const DeepCollectionEquality()
              .equals(other.additionDate, additionDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(media),
        const DeepCollectionEquality().hash(voterCount),
        const DeepCollectionEquality().hash(votePercentage),
        const DeepCollectionEquality().hash(recentVoterIds),
        const DeepCollectionEquality().hash(isChosen),
        const DeepCollectionEquality().hash(isBeingChosen),
        const DeepCollectionEquality().hash(author),
        const DeepCollectionEquality().hash(additionDate)
      ]);
}
