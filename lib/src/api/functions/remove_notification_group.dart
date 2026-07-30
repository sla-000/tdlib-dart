// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a group of active notifications. Needs to be called only if the
/// notification group is removed by the current user
/// Returns [Ok]
@immutable
class RemoveNotificationGroup extends TdFunction {
  const RemoveNotificationGroup({
    required this.notificationGroupId,
    required this.maxNotificationId,
  });

  /// [notificationGroupId] Notification group identifier
  final int notificationGroupId;

  /// [maxNotificationId] The maximum identifier of removed notifications
  final int maxNotificationId;

  static const String constructor = 'removeNotificationGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'max_notification_id': maxNotificationId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveNotificationGroup &&
          const DeepCollectionEquality()
              .equals(other.notificationGroupId, notificationGroupId) &&
          const DeepCollectionEquality()
              .equals(other.maxNotificationId, maxNotificationId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(notificationGroupId),
        const DeepCollectionEquality().hash(maxNotificationId)
      ]);
}
