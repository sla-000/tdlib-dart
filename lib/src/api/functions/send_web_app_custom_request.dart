// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a custom request from a Web App
/// Returns [CustomRequestResult]
@immutable
class SendWebAppCustomRequest extends TdFunction {
  const SendWebAppCustomRequest({
    required this.botUserId,
    required this.method,
    required this.parameters,
  });

  /// [botUserId] Identifier of the bot
  final int botUserId;

  /// [method] The method name
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;

  static const String constructor = 'sendWebAppCustomRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'method': method,
        'parameters': parameters,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendWebAppCustomRequest &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.method, method) &&
          const DeepCollectionEquality().equals(other.parameters, parameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(method),
        const DeepCollectionEquality().hash(parameters)
      ]);
}
