// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks the authentication code and completes the request for which the
/// code was sent if appropriate
/// Returns [Ok]
@immutable
class CheckPhoneNumberCode extends TdFunction {
  const CheckPhoneNumberCode({
    required this.code,
  });

  /// [code] Authentication code to check
  final String code;

  static const String constructor = 'checkPhoneNumberCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckPhoneNumberCode &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(code)]);
}
