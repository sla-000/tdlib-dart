// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notification settings applied to all private and secret chats when the
/// corresponding chat setting has a default value
@immutable
class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  const NotificationSettingsScopePrivateChats();

  static const String constructor = 'notificationSettingsScopePrivateChats';

  static NotificationSettingsScopePrivateChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopePrivateChats();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NotificationSettingsScopePrivateChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
