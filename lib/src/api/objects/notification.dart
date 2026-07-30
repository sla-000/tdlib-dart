// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a notification
@immutable
class Notification extends TdObject {
  const Notification({
    required this.id,
    required this.date,
    required this.isSilent,
    required this.type,
  });

  /// [id] Unique persistent identifier of this notification
  final int id;

  /// [date] Notification date
  final int date;

  /// [isSilent] True, if the notification was explicitly sent without sound
  final bool isSilent;

  /// [type] Notification type
  final NotificationType type;

  static const String constructor = 'notification';

  static Notification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Notification(
      id: (json['id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      isSilent: (json['is_silent'] as bool?) ?? false,
      type: NotificationType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'date': date,
        'is_silent': isSilent,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Notification &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.isSilent, isSilent) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(isSilent),
        const DeepCollectionEquality().hash(type)
      ]);
}
