// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a group of notifications
@immutable
class NotificationGroup extends TdObject {
  const NotificationGroup({
    required this.id,
    required this.type,
    required this.chatId,
    required this.totalCount,
    required this.notifications,
  });

  /// [id] Unique persistent auto-incremented from 1 identifier of the
  /// notification group
  final int id;

  /// [type] Type of the group
  final NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group
  /// belong
  final int chatId;

  /// [totalCount] Total number of active notifications in the group
  final int totalCount;

  /// [notifications] The list of active notifications
  final List<Notification> notifications;

  static const String constructor = 'notificationGroup';

  static NotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationGroup(
      id: (json['id'] as int?) ?? 0,
      type: NotificationGroupType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
      chatId: (json['chat_id'] as int?) ?? 0,
      totalCount: (json['total_count'] as int?) ?? 0,
      notifications: List<Notification>.from(((json['notifications']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => Notification.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type.toJson(),
        'chat_id': chatId,
        'total_count': totalCount,
        'notifications': notifications.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NotificationGroup &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount) &&
          const DeepCollectionEquality()
              .equals(other.notifications, notifications));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(totalCount),
        const DeepCollectionEquality().hash(notifications)
      ]);
}
