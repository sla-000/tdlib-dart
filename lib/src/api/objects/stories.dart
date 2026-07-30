// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of stories
@immutable
class Stories extends TdObject {
  const Stories({
    required this.totalCount,
    required this.stories,
    required this.pinnedStoryIds,
  });

  /// [totalCount] Approximate total number of stories found
  final int totalCount;

  /// [stories] The list of stories
  final List<Story> stories;

  /// [pinnedStoryIds] Identifiers of the pinned stories; returned only in
  /// getChatPostedToChatPageStories with from_story_id == 0
  final List<int> pinnedStoryIds;

  static const String constructor = 'stories';

  static Stories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stories(
      totalCount: json['total_count'] as int,
      stories: List<Story>.from(
          ((json['stories'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Story.fromJson(item))
              .toList()),
      pinnedStoryIds: List<int>.from(
          ((json['pinned_story_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'stories': stories.map((item) => item.toJson()).toList(),
        'pinned_story_ids': pinnedStoryIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Stories &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.stories, stories) &&
          const DeepCollectionEquality()
              .equals(other.pinnedStoryIds, pinnedStoryIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(stories),
        const DeepCollectionEquality().hash(pinnedStoryIds)
      ]);
}
