// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Establishing a connection to the Telegram servers
@immutable
class ConnectionStateConnecting extends ConnectionState {
  const ConnectionStateConnecting();

  static const String constructor = 'connectionStateConnecting';

  static ConnectionStateConnecting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnecting();
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
      (other.runtimeType == runtimeType && other is ConnectionStateConnecting);

  @override
  int get hashCode => runtimeType.hashCode;
}
