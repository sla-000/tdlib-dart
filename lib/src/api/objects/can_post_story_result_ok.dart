// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A story can be sent
@immutable
class CanPostStoryResultOk extends CanPostStoryResult {
  const CanPostStoryResultOk({
    required this.storyCount,
  });

  /// [storyCount] Number of stories that can be posted by the user
  final int storyCount;

  static const String constructor = 'canPostStoryResultOk';

  static CanPostStoryResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultOk(
      storyCount: (json['story_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_count': storyCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanPostStoryResultOk &&
          const DeepCollectionEquality().equals(other.storyCount, storyCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(storyCount)]);
}
