// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains authentication data for an email address
@immutable
abstract class EmailAddressAuthentication extends TdObject {
  const EmailAddressAuthentication();

  static const String constructor = 'emailAddressAuthentication';

  /// Inherited by:
  /// [EmailAddressAuthenticationAppleId]
  /// [EmailAddressAuthenticationCode]
  /// [EmailAddressAuthenticationGoogleId]
  static EmailAddressAuthentication? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmailAddressAuthenticationAppleId.constructor:
        return EmailAddressAuthenticationAppleId.fromJson(json);
      case EmailAddressAuthenticationCode.constructor:
        return EmailAddressAuthenticationCode.fromJson(json);
      case EmailAddressAuthenticationGoogleId.constructor:
        return EmailAddressAuthenticationGoogleId.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is EmailAddressAuthentication);

  @override
  int get hashCode => runtimeType.hashCode;
}
