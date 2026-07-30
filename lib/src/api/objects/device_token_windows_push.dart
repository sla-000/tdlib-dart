// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A token for Windows Push Notification Services
@immutable
class DeviceTokenWindowsPush extends DeviceToken {
  const DeviceTokenWindowsPush({
    required this.accessToken,
  });

  /// [accessToken] The access token that will be used to send notifications;
  /// may be empty to deregister a device
  final String accessToken;

  static const String constructor = 'deviceTokenWindowsPush';

  static DeviceTokenWindowsPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenWindowsPush(
      accessToken: (json['access_token'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'access_token': accessToken,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeviceTokenWindowsPush &&
          const DeepCollectionEquality()
              .equals(other.accessToken, accessToken));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(accessToken)]);
}
