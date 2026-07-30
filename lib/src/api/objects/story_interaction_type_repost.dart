// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A repost of the story as a story
@immutable
class StoryInteractionTypeRepost extends StoryInteractionType {
  const StoryInteractionTypeRepost({
    required this.story,
  });

  /// [story] The reposted story
  final Story story;

  static const String constructor = 'storyInteractionTypeRepost';

  static StoryInteractionTypeRepost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionTypeRepost(
      story: Story.fromJson(json['story'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story': story.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryInteractionTypeRepost &&
          const DeepCollectionEquality().equals(other.story, story));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(story)]);
}
