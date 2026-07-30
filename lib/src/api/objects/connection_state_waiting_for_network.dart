// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Waiting for the network to become available. Use setNetworkType to change
/// the available network type
@immutable
class ConnectionStateWaitingForNetwork extends ConnectionState {
  const ConnectionStateWaitingForNetwork();

  static const String constructor = 'connectionStateWaitingForNetwork';

  static ConnectionStateWaitingForNetwork? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateWaitingForNetwork();
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
          other is ConnectionStateWaitingForNetwork);

  @override
  int get hashCode => runtimeType.hashCode;
}
