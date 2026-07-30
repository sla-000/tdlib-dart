// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A token for Microsoft Push Notification Service
@immutable
class DeviceTokenMicrosoftPush extends DeviceToken {
  const DeviceTokenMicrosoftPush({
    required this.channelUri,
  });

  /// [channelUri] Push notification channel URI; may be empty to deregister a
  /// device
  final String channelUri;

  static const String constructor = 'deviceTokenMicrosoftPush';

  static DeviceTokenMicrosoftPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenMicrosoftPush(
      channelUri: (json['channel_uri'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'channel_uri': channelUri,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeviceTokenMicrosoftPush &&
          const DeepCollectionEquality().equals(other.channelUri, channelUri));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(channelUri)]);
}
