import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of passkeys allowed to be used for the login by the
/// current user
/// Returns [Passkeys]
@immutable
class GetLoginPasskeys extends TdFunction {
  const GetLoginPasskeys();

  static const String constructor = 'getLoginPasskeys';

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
