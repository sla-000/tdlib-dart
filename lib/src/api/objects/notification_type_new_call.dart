// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// New call was received
@immutable
class NotificationTypeNewCall extends NotificationType {
  const NotificationTypeNewCall({
    required this.callId,
  });

  /// [callId] Call identifier
  final int callId;

  static const String constructor = 'notificationTypeNewCall';

  static NotificationTypeNewCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewCall(
      callId: (json['call_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NotificationTypeNewCall &&
          const DeepCollectionEquality().equals(other.callId, callId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(callId)]);
}
