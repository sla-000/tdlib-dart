// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewCall
@immutable
class NotificationGroupTypeCalls extends NotificationGroupType {
  const NotificationGroupTypeCalls();

  static const String constructor = 'notificationGroupTypeCalls';

  static NotificationGroupTypeCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeCalls();
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
      (other.runtimeType == runtimeType && other is NotificationGroupTypeCalls);

  @override
  int get hashCode => runtimeType.hashCode;
}
