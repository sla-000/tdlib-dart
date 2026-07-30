// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A business connection has changed; for bots only
@immutable
class UpdateBusinessConnection extends Update {
  const UpdateBusinessConnection({
    required this.connection,
  });

  /// [connection] New data about the connection
  final BusinessConnection connection;

  static const String constructor = 'updateBusinessConnection';

  static UpdateBusinessConnection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBusinessConnection(
      connection: BusinessConnection.fromJson(
          json['connection'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connection': connection.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateBusinessConnection &&
          const DeepCollectionEquality().equals(other.connection, connection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(connection)]);
}
