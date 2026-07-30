// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a business connection by its identifier; for
/// bots only
/// Returns [BusinessConnection]
@immutable
class GetBusinessConnection extends TdFunction {
  const GetBusinessConnection({
    required this.connectionId,
  });

  /// [connectionId] Identifier of the business connection to return
  final String connectionId;

  static const String constructor = 'getBusinessConnection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connection_id': connectionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBusinessConnection &&
          const DeepCollectionEquality()
              .equals(other.connectionId, connectionId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(connectionId)]);
}
