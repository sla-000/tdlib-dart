// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetLoginPasskeys);

  @override
  int get hashCode => runtimeType.hashCode;
}
