// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Wi-Fi network
@immutable
class NetworkTypeWiFi extends NetworkType {
  const NetworkTypeWiFi();

  static const String constructor = 'networkTypeWiFi';

  static NetworkTypeWiFi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeWiFi();
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
      (other.runtimeType == runtimeType && other is NetworkTypeWiFi);

  @override
  int get hashCode => runtimeType.hashCode;
}
