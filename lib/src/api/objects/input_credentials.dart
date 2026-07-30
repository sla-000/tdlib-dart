// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the payment method chosen by the user
@immutable
abstract class InputCredentials extends TdObject {
  const InputCredentials();

  static const String constructor = 'inputCredentials';

  /// Inherited by:
  /// [InputCredentialsApplePay]
  /// [InputCredentialsGooglePay]
  /// [InputCredentialsNew]
  /// [InputCredentialsSaved]
  static InputCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputCredentialsApplePay.constructor:
        return InputCredentialsApplePay.fromJson(json);
      case InputCredentialsGooglePay.constructor:
        return InputCredentialsGooglePay.fromJson(json);
      case InputCredentialsNew.constructor:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsSaved.constructor:
        return InputCredentialsSaved.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputCredentials);

  @override
  int get hashCode => runtimeType.hashCode;
}
