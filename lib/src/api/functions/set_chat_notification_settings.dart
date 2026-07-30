// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the notification settings of a chat. Notification settings of a
/// chat with the current user (Saved Messages) can't be changed
/// Returns [Ok]
@immutable
class SetChatNotificationSettings extends TdFunction {
  const SetChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] New notification settings for the chat. If the chat
  /// is muted for more than 366 days, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;

  static const String constructor = 'setChatNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatNotificationSettings &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.notificationSettings, notificationSettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(notificationSettings)
      ]);
}
