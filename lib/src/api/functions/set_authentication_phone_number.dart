// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets the phone number of the user and sends an authentication code to the
/// user. Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber, or if there is no pending
/// authentication query and the current authorization state is
/// authorizationStateWaitPremiumPurchase, authorizationStateWaitEmailAddress,
/// authorizationStateWaitEmailCode, authorizationStateWaitCode,
/// authorizationStateWaitRegistration, or authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class SetAuthenticationPhoneNumber extends TdFunction {
  const SetAuthenticationPhoneNumber({
    required this.phoneNumber,
    this.settings,
  });

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number;
  /// pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  static const String constructor = 'setAuthenticationPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAuthenticationPhoneNumber &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.settings, settings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(settings)
      ]);
}
