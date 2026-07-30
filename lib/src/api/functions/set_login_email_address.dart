// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the login email address of the user. The email address can be
/// changed only if the current user already has login email and
/// passwordState.login_email_address_pattern is non-empty, or the user
/// received suggestedActionSetLoginEmailAddress and
/// isLoginEmailAddressRequired succeeds. The change will not be applied until
/// the new login email address is confirmed with checkLoginEmailAddressCode.
/// To use Apple ID/Google ID instead of an email address, call
/// checkLoginEmailAddressCode directly
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class SetLoginEmailAddress extends TdFunction {
  const SetLoginEmailAddress({
    required this.newLoginEmailAddress,
  });

  /// [newLoginEmailAddress] New login email address
  final String newLoginEmailAddress;

  static const String constructor = 'setLoginEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'new_login_email_address': newLoginEmailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetLoginEmailAddress &&
          const DeepCollectionEquality()
              .equals(other.newLoginEmailAddress, newLoginEmailAddress));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(newLoginEmailAddress)]);
}
