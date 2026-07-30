// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a server for relaying call data
@immutable
class CallServer extends TdObject {
  const CallServer({
    required this.id,
    required this.ipAddress,
    required this.ipv6Address,
    required this.port,
    required this.type,
  });

  /// [id] Server identifier
  final int id;

  /// [ipAddress] Server IPv4 address
  final String ipAddress;

  /// [ipv6Address] Server IPv6 address
  final String ipv6Address;

  /// [port] Server port number
  final int port;

  /// [type] Server type
  final CallServerType type;

  static const String constructor = 'callServer';

  static CallServer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServer(
      id: int.tryParse(json['id']) ?? 0,
      ipAddress: json['ip_address'] as String,
      ipv6Address: json['ipv6_address'] as String,
      port: json['port'] as int,
      type: CallServerType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'ip_address': ipAddress,
        'ipv6_address': ipv6Address,
        'port': port,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallServer &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.ipAddress, ipAddress) &&
          const DeepCollectionEquality()
              .equals(other.ipv6Address, ipv6Address) &&
          const DeepCollectionEquality().equals(other.port, port) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(ipAddress),
        const DeepCollectionEquality().hash(ipv6Address),
        const DeepCollectionEquality().hash(port),
        const DeepCollectionEquality().hash(type)
      ]);
}
