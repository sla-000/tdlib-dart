// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a call rating
/// Returns [Ok]
@immutable
class SendCallRating extends TdFunction {
  const SendCallRating({
    required this.callId,
    required this.rating,
    this.comment,
    required this.problems,
  });

  /// [callId] Call identifier
  final InputCall callId;

  /// [rating] Call rating; 1-5
  final int rating;

  /// [comment] An optional user comment if the rating is less than 5
  final String? comment;

  /// [problems] List of the exact types of problems with the call, specified by
  /// the user
  final List<CallProblem> problems;

  static const String constructor = 'sendCallRating';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId.toJson(),
        'rating': rating,
        'comment': comment,
        'problems': problems.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendCallRating &&
          const DeepCollectionEquality().equals(other.callId, callId) &&
          const DeepCollectionEquality().equals(other.rating, rating) &&
          const DeepCollectionEquality().equals(other.comment, comment) &&
          const DeepCollectionEquality().equals(other.problems, problems));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(callId),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(comment),
        const DeepCollectionEquality().hash(problems)
      ]);
}
