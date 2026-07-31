// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A poll in quiz mode, which has predefined correct answers
@immutable
class InputPollTypeQuiz extends InputPollType {
  const InputPollTypeQuiz({
    required this.correctOptionIds,
    required this.explanation,
  });

  /// [correctOptionIds] Increasing list of 0-based identifiers of the correct
  /// answer options; must be non-empty
  final List<int> correctOptionIds;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// or taps on the lamp icon; 0-200 characters with at most 2 line feeds
  final FormattedText explanation;

  static const String constructor = 'inputPollTypeQuiz';

  static InputPollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollTypeQuiz(
      correctOptionIds: List<int>.from(
          ((json['correct_option_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      explanation:
          FormattedText.fromJson(json['explanation'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'correct_option_ids': correctOptionIds.map((item) => item).toList(),
        'explanation': explanation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollTypeQuiz &&
          const DeepCollectionEquality()
              .equals(other.correctOptionIds, correctOptionIds) &&
          const DeepCollectionEquality()
              .equals(other.explanation, explanation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(correctOptionIds),
        const DeepCollectionEquality().hash(explanation)
      ]);
}
