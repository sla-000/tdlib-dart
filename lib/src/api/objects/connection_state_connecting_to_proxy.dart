// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Establishing a connection with a proxy server
@immutable
class ConnectionStateConnectingToProxy extends ConnectionState {
  const ConnectionStateConnectingToProxy();

  static const String constructor = 'connectionStateConnectingToProxy';

  static ConnectionStateConnectingToProxy? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnectingToProxy();
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
          other is ConnectionStateConnectingToProxy);

  @override
  int get hashCode => runtimeType.hashCode;
}
