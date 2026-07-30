// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A token for Tizen Push Service
@immutable
class DeviceTokenTizenPush extends DeviceToken {
  const DeviceTokenTizenPush({
    required this.regId,
  });

  /// [regId] Push service registration identifier; may be empty to deregister a
  /// device
  final String regId;

  static const String constructor = 'deviceTokenTizenPush';

  static DeviceTokenTizenPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenTizenPush(
      regId: json['reg_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reg_id': regId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeviceTokenTizenPush &&
          const DeepCollectionEquality().equals(other.regId, regId));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(regId)]);
}
