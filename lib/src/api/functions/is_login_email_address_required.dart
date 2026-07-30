import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether the current user is required to set login email address
/// Returns [Ok]
@immutable
class IsLoginEmailAddressRequired extends TdFunction {
  const IsLoginEmailAddressRequired();

  static const String constructor = 'isLoginEmailAddressRequired';

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
