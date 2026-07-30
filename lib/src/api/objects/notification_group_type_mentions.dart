// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with unread mentions of the current user,
/// replies to their messages, or a pinned message
@immutable
class NotificationGroupTypeMentions extends NotificationGroupType {
  const NotificationGroupTypeMentions();

  static const String constructor = 'notificationGroupTypeMentions';

  static NotificationGroupTypeMentions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMentions();
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
          other is NotificationGroupTypeMentions);

  @override
  int get hashCode => runtimeType.hashCode;
}
