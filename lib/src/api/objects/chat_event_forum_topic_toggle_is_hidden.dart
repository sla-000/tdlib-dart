// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The General forum topic was hidden or unhidden
@immutable
class ChatEventForumTopicToggleIsHidden extends ChatEventAction {
  const ChatEventForumTopicToggleIsHidden({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  static const String constructor = 'chatEventForumTopicToggleIsHidden';

  static ChatEventForumTopicToggleIsHidden? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicToggleIsHidden(
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
          other is ChatEventForumTopicToggleIsHidden &&
          const DeepCollectionEquality().equals(other.topicInfo, topicInfo));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(topicInfo)]);
}
