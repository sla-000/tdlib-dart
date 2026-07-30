// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a poll
@immutable
class PushMessageContentPoll extends PushMessageContent {
  const PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });

  /// [question] Poll question
  final String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPoll';

  static PushMessageContentPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPoll(
      question: (json['question'] as String?) ?? '',
      isRegular: (json['is_regular'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'question': question,
        'is_regular': isRegular,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentPoll &&
          const DeepCollectionEquality().equals(other.question, question) &&
          const DeepCollectionEquality().equals(other.isRegular, isRegular) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(question),
        const DeepCollectionEquality().hash(isRegular),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
