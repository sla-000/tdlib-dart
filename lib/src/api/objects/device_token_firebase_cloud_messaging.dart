// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A token for Firebase Cloud Messaging
@immutable
class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  const DeviceTokenFirebaseCloudMessaging({
    required this.token,
    required this.encrypt,
  });

  /// [token] Device registration token; may be empty to deregister a device
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenFirebaseCloudMessaging';

  static DeviceTokenFirebaseCloudMessaging? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenFirebaseCloudMessaging(
      token: (json['token'] as String?) ?? '',
      encrypt: (json['encrypt'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        'encrypt': encrypt,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeviceTokenFirebaseCloudMessaging &&
          const DeepCollectionEquality().equals(other.token, token) &&
          const DeepCollectionEquality().equals(other.encrypt, encrypt));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(token),
        const DeepCollectionEquality().hash(encrypt)
      ]);
}
