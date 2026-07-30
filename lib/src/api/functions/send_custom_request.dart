// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a custom request; for bots only
/// Returns [CustomRequestResult]
@immutable
class SendCustomRequest extends TdFunction {
  const SendCustomRequest({
    required this.method,
    required this.parameters,
  });

  /// [method] The method name
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;

  static const String constructor = 'sendCustomRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'method': method,
        'parameters': parameters,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendCustomRequest &&
          const DeepCollectionEquality().equals(other.method, method) &&
          const DeepCollectionEquality().equals(other.parameters, parameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(method),
        const DeepCollectionEquality().hash(parameters)
      ]);
}
