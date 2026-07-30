// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a live story. Call searchPublicChat with the given
/// chat username, then getChatActiveStories to get active stories in the
/// chat, then find a live story among active stories of the chat, and then
/// joinLiveStory to join the live story
@immutable
class InternalLinkTypeLiveStory extends InternalLinkType {
  const InternalLinkTypeLiveStory({
    required this.storyPosterUsername,
  });

  /// [storyPosterUsername] Username of the poster of the story
  final String storyPosterUsername;

  static const String constructor = 'internalLinkTypeLiveStory';

  static InternalLinkTypeLiveStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeLiveStory(
      storyPosterUsername: (json['story_poster_username'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_username': storyPosterUsername,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeLiveStory &&
          const DeepCollectionEquality()
              .equals(other.storyPosterUsername, storyPosterUsername));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(storyPosterUsername)]);
}
