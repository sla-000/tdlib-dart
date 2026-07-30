// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a public repost to a story
@immutable
class PublicForwardStory extends PublicForward {
  const PublicForwardStory({
    required this.story,
  });

  /// [story] Information about the story
  final Story story;

  static const String constructor = 'publicForwardStory';

  static PublicForwardStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicForwardStory(
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
          other is PublicForwardStory &&
          const DeepCollectionEquality().equals(other.story, story));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(story)]);
}
