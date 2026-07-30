// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks the login email address authentication
/// Returns [Ok]
@immutable
class CheckLoginEmailAddressCode extends TdFunction {
  const CheckLoginEmailAddressCode({
    required this.code,
  });

  /// [code] Email address authentication to check
  final EmailAddressAuthentication code;

  static const String constructor = 'checkLoginEmailAddressCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckLoginEmailAddressCode &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(code)]);
}
