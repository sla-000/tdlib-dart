// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A notification was changed
@immutable
class UpdateNotification extends Update {
  const UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
  });

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [notification] Changed notification
  final Notification notification;

  static const String constructor = 'updateNotification';

  static UpdateNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotification(
      notificationGroupId: (json['notification_group_id'] as int?) ?? 0,
      notification:
          Notification.fromJson(json['notification'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'notification': notification.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNotification &&
          const DeepCollectionEquality()
              .equals(other.notificationGroupId, notificationGroupId) &&
          const DeepCollectionEquality()
              .equals(other.notification, notification));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(notificationGroupId),
        const DeepCollectionEquality().hash(notification)
      ]);
}
