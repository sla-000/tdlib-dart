// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an HTTPS URL of a Web App of a guard bot to open after receiving
/// chatJoinResultGuardBotApprovalRequired
/// Returns [WebAppUrl]
@immutable
class GetGuardBotWebAppUrl extends TdFunction {
  const GetGuardBotWebAppUrl({
    required this.queryId,
    required this.parameters,
  });

  /// [queryId] Unique identifier of the join request as received in
  /// chatJoinResultGuardBotApprovalRequired
  final int queryId;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  static const String constructor = 'getGuardBotWebAppUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query_id': queryId,
        'parameters': parameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGuardBotWebAppUrl &&
          const DeepCollectionEquality().equals(other.queryId, queryId) &&
          const DeepCollectionEquality().equals(other.parameters, parameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(queryId),
        const DeepCollectionEquality().hash(parameters)
      ]);
}
