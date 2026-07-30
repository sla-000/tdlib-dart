// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A group containing a notification of type notificationTypeNewSecretChat
@immutable
class NotificationGroupTypeSecretChat extends NotificationGroupType {
  const NotificationGroupTypeSecretChat();

  static const String constructor = 'notificationGroupTypeSecretChat';

  static NotificationGroupTypeSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeSecretChat();
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
          other is NotificationGroupTypeSecretChat);

  @override
  int get hashCode => runtimeType.hashCode;
}
