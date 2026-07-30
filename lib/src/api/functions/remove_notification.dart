// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes an active notification from notification list. Needs to be called
/// only if the notification is removed by the current user
/// Returns [Ok]
@immutable
class RemoveNotification extends TdFunction {
  const RemoveNotification({
    required this.notificationGroupId,
    required this.notificationId,
  });

  /// [notificationGroupId] Identifier of notification group to which the
  /// notification belongs
  final int notificationGroupId;

  /// [notificationId] Identifier of removed notification
  final int notificationId;

  static const String constructor = 'removeNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'notification_id': notificationId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveNotification &&
          const DeepCollectionEquality()
              .equals(other.notificationGroupId, notificationGroupId) &&
          const DeepCollectionEquality()
              .equals(other.notificationId, notificationId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(notificationGroupId),
        const DeepCollectionEquality().hash(notificationId)
      ]);
}
