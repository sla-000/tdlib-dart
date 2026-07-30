// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains basic information about a story
@immutable
class StoryInfo extends TdObject {
  const StoryInfo({
    required this.storyId,
    required this.date,
    required this.isForCloseFriends,
    required this.isLive,
  });

  /// [storyId] Unique story identifier among stories of the chat
  final int storyId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isForCloseFriends] True, if the story is available only to close friends
  final bool isForCloseFriends;

  /// [isLive] True, if the story is a live story
  final bool isLive;

  static const String constructor = 'storyInfo';

  static StoryInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInfo(
      storyId: (json['story_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      isForCloseFriends: (json['is_for_close_friends'] as bool?) ?? false,
      isLive: (json['is_live'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_id': storyId,
        'date': date,
        'is_for_close_friends': isForCloseFriends,
        'is_live': isLive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryInfo &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality()
              .equals(other.isForCloseFriends, isForCloseFriends) &&
          const DeepCollectionEquality().equals(other.isLive, isLive));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(isForCloseFriends),
        const DeepCollectionEquality().hash(isLive)
      ]);
}
