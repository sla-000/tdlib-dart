// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A story was changed
@immutable
class UpdateStory extends Update {
  const UpdateStory({
    required this.story,
  });

  /// [story] The new information about the story
  final Story story;

  static const String constructor = 'updateStory';

  static UpdateStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStory(
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
          other is UpdateStory &&
          const DeepCollectionEquality().equals(other.story, story));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(story)]);
}
