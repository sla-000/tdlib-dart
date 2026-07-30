// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A token for Simple Push API for Firefox OS
@immutable
class DeviceTokenSimplePush extends DeviceToken {
  const DeviceTokenSimplePush({
    required this.endpoint,
  });

  /// [endpoint] Absolute URL exposed by the push service where the application
  /// server can send push messages; may be empty to deregister a device
  final String endpoint;

  static const String constructor = 'deviceTokenSimplePush';

  static DeviceTokenSimplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenSimplePush(
      endpoint: json['endpoint'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'endpoint': endpoint,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeviceTokenSimplePush &&
          const DeepCollectionEquality().equals(other.endpoint, endpoint));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(endpoint)]);
}
