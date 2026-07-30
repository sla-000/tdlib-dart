// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the notification settings of a forum topic in a forum supergroup
/// chat or a chat with a bot with topics
/// Returns [Ok]
@immutable
class SetForumTopicNotificationSettings extends TdFunction {
  const SetForumTopicNotificationSettings({
    required this.chatId,
    required this.forumTopicId,
    required this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  /// [notificationSettings] New notification settings for the forum topic. If
  /// the topic is muted for more than 366 days, it is considered to be muted
  /// forever
  final ChatNotificationSettings notificationSettings;

  static const String constructor = 'setForumTopicNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetForumTopicNotificationSettings &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality()
              .equals(other.notificationSettings, notificationSettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(notificationSettings)
      ]);
}
