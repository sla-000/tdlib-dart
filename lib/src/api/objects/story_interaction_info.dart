// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about interactions with a story
@immutable
class StoryInteractionInfo extends TdObject {
  const StoryInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    required this.reactionCount,
    required this.recentViewerUserIds,
  });

  /// [viewCount] Number of times the story was viewed
  final int viewCount;

  /// [forwardCount] Number of times the story was forwarded; 0 if none or
  /// unknown
  final int forwardCount;

  /// [reactionCount] Number of reactions added to the story; 0 if none or
  /// unknown
  final int reactionCount;

  /// [recentViewerUserIds] Identifiers of at most 3 recent viewers of the story
  final List<int> recentViewerUserIds;

  static const String constructor = 'storyInteractionInfo';

  static StoryInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionInfo(
      viewCount: (json['view_count'] as int?) ?? 0,
      forwardCount: (json['forward_count'] as int?) ?? 0,
      reactionCount: (json['reaction_count'] as int?) ?? 0,
      recentViewerUserIds: List<int>.from(
          ((json['recent_viewer_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'view_count': viewCount,
        'forward_count': forwardCount,
        'reaction_count': reactionCount,
        'recent_viewer_user_ids':
            recentViewerUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryInteractionInfo &&
          const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
          const DeepCollectionEquality()
              .equals(other.forwardCount, forwardCount) &&
          const DeepCollectionEquality()
              .equals(other.reactionCount, reactionCount) &&
          const DeepCollectionEquality()
              .equals(other.recentViewerUserIds, recentViewerUserIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(viewCount),
        const DeepCollectionEquality().hash(forwardCount),
        const DeepCollectionEquality().hash(reactionCount),
        const DeepCollectionEquality().hash(recentViewerUserIds)
      ]);
}
