// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Notification settings applied to all basic group and supergroup chats when
/// the corresponding chat setting has a default value
@immutable
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  const NotificationSettingsScopeGroupChats();

  static const String constructor = 'notificationSettingsScopeGroupChats';

  static NotificationSettingsScopeGroupChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeGroupChats();
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
          other is NotificationSettingsScopeGroupChats);

  @override
  int get hashCode => runtimeType.hashCode;
}
