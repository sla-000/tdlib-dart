// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a story. Call searchPublicChat with the given poster
/// username, then call getStory with the received chat identifier and the
/// given story identifier, then show the story if received
@immutable
class InternalLinkTypeStory extends InternalLinkType {
  const InternalLinkTypeStory({
    required this.storyPosterUsername,
    required this.storyId,
  });

  /// [storyPosterUsername] Username of the poster of the story
  final String storyPosterUsername;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'internalLinkTypeStory';

  static InternalLinkTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStory(
      storyPosterUsername: json['story_poster_username'] as String,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_username': storyPosterUsername,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeStory &&
          const DeepCollectionEquality()
              .equals(other.storyPosterUsername, storyPosterUsername) &&
          const DeepCollectionEquality().equals(other.storyId, storyId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterUsername),
        const DeepCollectionEquality().hash(storyId)
      ]);
}
