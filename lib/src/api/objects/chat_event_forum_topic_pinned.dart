// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A pinned forum topic was changed
@immutable
class ChatEventForumTopicPinned extends ChatEventAction {
  const ChatEventForumTopicPinned({
    this.oldTopicInfo,
    this.newTopicInfo,
  });

  /// [oldTopicInfo] Information about the old pinned topic; may be null
  final ForumTopicInfo? oldTopicInfo;

  /// [newTopicInfo] Information about the new pinned topic; may be null
  final ForumTopicInfo? newTopicInfo;

  static const String constructor = 'chatEventForumTopicPinned';

  static ChatEventForumTopicPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicPinned(
      oldTopicInfo: ForumTopicInfo.fromJson(
          json['old_topic_info'] as Map<String, dynamic>?),
      newTopicInfo: ForumTopicInfo.fromJson(
          json['new_topic_info'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_topic_info': oldTopicInfo?.toJson(),
        'new_topic_info': newTopicInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventForumTopicPinned &&
          const DeepCollectionEquality()
              .equals(other.oldTopicInfo, oldTopicInfo) &&
          const DeepCollectionEquality()
              .equals(other.newTopicInfo, newTopicInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldTopicInfo),
        const DeepCollectionEquality().hash(newTopicInfo)
      ]);
}
