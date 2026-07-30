// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notification settings for a chat were changed
@immutable
class UpdateChatNotificationSettings extends Update {
  const UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] The new notification settings
  final ChatNotificationSettings notificationSettings;

  static const String constructor = 'updateChatNotificationSettings';

  static UpdateChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatNotificationSettings(
      chatId: (json['chat_id'] as int?) ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
    );
  }

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
          other is UpdateChatNotificationSettings &&
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
