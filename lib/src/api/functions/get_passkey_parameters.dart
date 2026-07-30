import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns parameters for creating of a new passkey as JSON-serialized string
/// Returns [Text]
@immutable
class GetPasskeyParameters extends TdFunction {
  const GetPasskeyParameters();

  static const String constructor = 'getPasskeyParameters';

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
