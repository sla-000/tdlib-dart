// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a list of forum topics
@immutable
class ForumTopics extends TdObject {
  const ForumTopics({
    required this.totalCount,
    required this.topics,
    required this.nextOffsetDate,
    required this.nextOffsetMessageId,
    required this.nextOffsetForumTopicId,
  });

  /// [totalCount] Approximate total number of forum topics found
  final int totalCount;

  /// [topics] List of forum topics
  final List<ForumTopic> topics;

  /// [nextOffsetDate] Offset date for the next getForumTopics request
  final int nextOffsetDate;

  /// [nextOffsetMessageId] Offset message identifier for the next
  /// getForumTopics request
  final int nextOffsetMessageId;

  /// [nextOffsetForumTopicId] Offset forum topic identifier for the next
  /// getForumTopics request
  final int nextOffsetForumTopicId;

  static const String constructor = 'forumTopics';

  static ForumTopics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopics(
      totalCount: (json['total_count'] as int?) ?? 0,
      topics: List<ForumTopic>.from(
          ((json['topics'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ForumTopic.fromJson(item as Map<String, dynamic>?))
              .toList()),
      nextOffsetDate: (json['next_offset_date'] as int?) ?? 0,
      nextOffsetMessageId: (json['next_offset_message_id'] as int?) ?? 0,
      nextOffsetForumTopicId: (json['next_offset_forum_topic_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'topics': topics.map((item) => item.toJson()).toList(),
        'next_offset_date': nextOffsetDate,
        'next_offset_message_id': nextOffsetMessageId,
        'next_offset_forum_topic_id': nextOffsetForumTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ForumTopics &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality().equals(other.topics, topics) &&
          const DeepCollectionEquality()
              .equals(other.nextOffsetDate, nextOffsetDate) &&
          const DeepCollectionEquality()
              .equals(other.nextOffsetMessageId, nextOffsetMessageId) &&
          const DeepCollectionEquality()
              .equals(other.nextOffsetForumTopicId, nextOffsetForumTopicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(topics),
        const DeepCollectionEquality().hash(nextOffsetDate),
        const DeepCollectionEquality().hash(nextOffsetMessageId),
        const DeepCollectionEquality().hash(nextOffsetForumTopicId)
      ]);
}
