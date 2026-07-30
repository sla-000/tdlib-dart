import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
