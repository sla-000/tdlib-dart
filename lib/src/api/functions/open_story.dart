// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that a story is opened and is being viewed by the user
/// Returns [Ok]
@immutable
class OpenStory extends TdFunction {
  const OpenStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the chat that posted the opened
  /// story
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  static const String constructor = 'openStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is OpenStory &&
          const DeepCollectionEquality()
              .equals(other.storyPosterChatId, storyPosterChatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterChatId),
        const DeepCollectionEquality().hash(storyId)
      ]);
}
