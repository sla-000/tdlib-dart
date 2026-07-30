// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of notification sounds
@immutable
class NotificationSounds extends TdObject {
  const NotificationSounds({
    required this.notificationSounds,
  });

  /// [notificationSounds] A list of notification sounds
  final List<NotificationSound> notificationSounds;

  static const String constructor = 'notificationSounds';

  static NotificationSounds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationSounds(
      notificationSounds: List<NotificationSound>.from(
          ((json['notification_sounds'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  NotificationSound.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_sounds':
            notificationSounds.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NotificationSounds &&
          const DeepCollectionEquality()
              .equals(other.notificationSounds, notificationSounds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(notificationSounds)]);
}
