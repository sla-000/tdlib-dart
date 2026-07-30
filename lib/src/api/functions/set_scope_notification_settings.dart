// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes notification settings for chats of a given type
/// Returns [Ok]
@immutable
class SetScopeNotificationSettings extends TdFunction {
  const SetScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });

  /// [scope] Types of chats for which to change the notification settings
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  final ScopeNotificationSettings notificationSettings;

  static const String constructor = 'setScopeNotificationSettings';

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
          other is SetScopeNotificationSettings &&
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
