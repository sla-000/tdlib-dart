// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A forum topic was closed or reopened
@immutable
class ChatEventForumTopicToggleIsClosed extends ChatEventAction {
  const ChatEventForumTopicToggleIsClosed({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  static const String constructor = 'chatEventForumTopicToggleIsClosed';

  static ChatEventForumTopicToggleIsClosed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicToggleIsClosed(
      topicInfo:
          ForumTopicInfo.fromJson(json['topic_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'topic_info': topicInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventForumTopicToggleIsClosed &&
          const DeepCollectionEquality().equals(other.topicInfo, topicInfo));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(topicInfo)]);
}
