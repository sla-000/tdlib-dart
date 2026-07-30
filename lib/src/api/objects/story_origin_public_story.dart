// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The original story was a public story that was posted by a known chat
@immutable
class StoryOriginPublicStory extends StoryOrigin {
  const StoryOriginPublicStory({
    required this.chatId,
    required this.storyId,
  });

  /// [chatId] Identifier of the chat that posted original story
  final int chatId;

  /// [storyId] Story identifier of the original story
  final int storyId;

  static const String constructor = 'storyOriginPublicStory';

  static StoryOriginPublicStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginPublicStory(
      chatId: json['chat_id'] as int,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryOriginPublicStory &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyId)
      ]);
}
