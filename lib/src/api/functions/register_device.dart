// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Registers the currently used device for receiving push notifications.
/// Returns a globally unique identifier of the push notification subscription
/// Returns [PushReceiverId]
@immutable
class RegisterDevice extends TdFunction {
  const RegisterDevice({
    required this.deviceToken,
    required this.otherUserIds,
  });

  /// [deviceToken] Device token
  final DeviceToken deviceToken;

  /// [otherUserIds] List of user identifiers of other users currently using the
  /// application
  final List<int> otherUserIds;

  static const String constructor = 'registerDevice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'device_token': deviceToken.toJson(),
        'other_user_ids': otherUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RegisterDevice &&
          const DeepCollectionEquality()
              .equals(other.deviceToken, deviceToken) &&
          const DeepCollectionEquality()
              .equals(other.otherUserIds, otherUserIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(deviceToken),
        const DeepCollectionEquality().hash(otherUserIds)
      ]);
}
