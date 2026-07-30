// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a proxy server
@immutable
class Proxy extends TdObject {
  const Proxy({
    required this.server,
    required this.port,
    required this.type,
  });

  /// [server] Proxy server domain or IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [type] Type of the proxy
  final ProxyType type;

  static const String constructor = 'proxy';

  static Proxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Proxy(
      server: json['server'] as String,
      port: json['port'] as int,
      type: ProxyType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'server': server,
        'port': port,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Proxy &&
          const DeepCollectionEquality().equals(other.server, server) &&
          const DeepCollectionEquality().equals(other.port, port) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(server),
        const DeepCollectionEquality().hash(port),
        const DeepCollectionEquality().hash(type)
      ]);
}
