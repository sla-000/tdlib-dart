// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a story
@immutable
class PushMessageContentStory extends PushMessageContent {
  const PushMessageContentStory({
    required this.isMention,
    required this.isPinned,
  });

  /// [isMention] True, if the user was mentioned in the story
  final bool isMention;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentStory';

  static PushMessageContentStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentStory(
      isMention: (json['is_mention'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_mention': isMention,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentStory &&
          const DeepCollectionEquality().equals(other.isMention, isMention) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isMention),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
