// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notification settings for some type of chats were updated
@immutable
class UpdateScopeNotificationSettings extends Update {
  const UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });

  /// [scope] Types of chats for which notification settings were updated
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings
  final ScopeNotificationSettings notificationSettings;

  static const String constructor = 'updateScopeNotificationSettings';

  static UpdateScopeNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateScopeNotificationSettings(
      scope: NotificationSettingsScope.fromJson(
          json['scope'] as Map<String, dynamic>?)!,
      notificationSettings: ScopeNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope.toJson(),
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateScopeNotificationSettings &&
          const DeepCollectionEquality().equals(other.scope, scope) &&
          const DeepCollectionEquality()
              .equals(other.notificationSettings, notificationSettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(scope),
        const DeepCollectionEquality().hash(notificationSettings)
      ]);
}
