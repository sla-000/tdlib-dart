// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A poll in quiz mode, which has predefined correct answers
@immutable
class PollTypeQuiz extends PollType {
  const PollTypeQuiz({
    required this.correctOptionIds,
    required this.explanation,
    this.explanationMedia,
  });

  /// [correctOptionIds] Increasing list of 0-based identifiers of the correct
  /// answer options; empty for a yet unanswered poll
  final List<int> correctOptionIds;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// or taps on the lamp icon; empty for a yet unanswered poll
  final FormattedText explanation;

  /// [explanationMedia] Media that is shown when the user chooses an incorrect
  /// answer or taps on the lamp icon; may be null if none or the poll is
  /// unanswered yet. If present, currently, can be only of the types
  /// messageAnimation, messageAudio, messageDocument, messageLocation,
  /// messagePhoto, messageVenue, or messageVideo without caption
  final MessageContent? explanationMedia;

  static const String constructor = 'pollTypeQuiz';

  static PollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollTypeQuiz(
      correctOptionIds: List<int>.from(
          ((json['correct_option_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      explanation:
          FormattedText.fromJson(json['explanation'] as Map<String, dynamic>?)!,
      explanationMedia: MessageContent.fromJson(
          json['explanation_media'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'correct_option_ids': correctOptionIds.map((item) => item).toList(),
        'explanation': explanation.toJson(),
        'explanation_media': explanationMedia?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollTypeQuiz &&
          const DeepCollectionEquality()
              .equals(other.correctOptionIds, correctOptionIds) &&
          const DeepCollectionEquality()
              .equals(other.explanation, explanation) &&
          const DeepCollectionEquality()
              .equals(other.explanationMedia, explanationMedia));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(correctOptionIds),
        const DeepCollectionEquality().hash(explanation),
        const DeepCollectionEquality().hash(explanationMedia)
      ]);
}
