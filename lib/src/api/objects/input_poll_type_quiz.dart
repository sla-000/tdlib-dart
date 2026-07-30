import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A poll in quiz mode, which has predefined correct answers
@immutable
class InputPollTypeQuiz extends InputPollType {
  const InputPollTypeQuiz({
    required this.correctOptionIds,
    required this.explanation,
    this.explanationMedia,
  });

  /// [correctOptionIds] Increasing list of 0-based identifiers of the correct
  /// answer options; must be non-empty
  final List<int> correctOptionIds;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// or taps on the lamp icon; 0-200 characters with at most 2 line feeds
  final FormattedText explanation;

  /// [explanationMedia] Media that is shown when the user chooses an incorrect
  /// answer or taps on the lamp icon; pass null if none. Must be one of the
  /// following types: inputPollMediaAnimation, inputPollMediaAudio,
  /// inputPollMediaDocument, inputPollMediaLocation, inputPollMediaPhoto,
  /// inputPollMediaVenue, or inputPollMediaVideo without caption
  final InputPollMedia? explanationMedia;

  static const String constructor = 'inputPollTypeQuiz';

  static InputPollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollTypeQuiz(
      correctOptionIds: List<int>.from(
          ((json['correct_option_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      explanation:
          FormattedText.fromJson(json['explanation'] as Map<String, dynamic>?)!,
      explanationMedia: InputPollMedia.fromJson(
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
