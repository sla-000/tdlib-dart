// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The live story was successfully posted
@immutable
class StartLiveStoryResultOk extends StartLiveStoryResult {
  const StartLiveStoryResultOk({
    required this.story,
  });

  /// [story] The live story
  final Story story;

  static const String constructor = 'startLiveStoryResultOk';

  static StartLiveStoryResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StartLiveStoryResultOk(
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
          other is StartLiveStoryResultOk &&
          const DeepCollectionEquality().equals(other.story, story));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(story)]);
}
