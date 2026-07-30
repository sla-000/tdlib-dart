// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Number of Saved Messages topics has changed
@immutable
class UpdateSavedMessagesTopicCount extends Update {
  const UpdateSavedMessagesTopicCount({
    required this.topicCount,
  });

  /// [topicCount] Approximate total number of Saved Messages topics
  final int topicCount;

  static const String constructor = 'updateSavedMessagesTopicCount';

  static UpdateSavedMessagesTopicCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedMessagesTopicCount(
      topicCount: json['topic_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'topic_count': topicCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateSavedMessagesTopicCount &&
          const DeepCollectionEquality().equals(other.topicCount, topicCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(topicCount)]);
}
