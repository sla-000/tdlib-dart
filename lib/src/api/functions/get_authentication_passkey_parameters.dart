// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns parameters for authentication using a passkey as JSON-serialized
/// string
/// Returns [Text]
@immutable
class GetAuthenticationPasskeyParameters extends TdFunction {
  const GetAuthenticationPasskeyParameters();

  static const String constructor = 'getAuthenticationPasskeyParameters';

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
          other is GetAuthenticationPasskeyParameters);

  @override
  int get hashCode => runtimeType.hashCode;
}
