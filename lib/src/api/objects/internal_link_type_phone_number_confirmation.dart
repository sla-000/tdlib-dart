// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link can be used to confirm ownership of a phone number to prevent
/// account deletion. Call sendPhoneNumberCode with the given phone number and
/// with phoneNumberCodeTypeConfirmOwnership with the given hash to process
/// the link. If succeeded, call checkPhoneNumberCode to check entered by the
/// user code, or resendPhoneNumberCode to resend it
@immutable
class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  const InternalLinkTypePhoneNumberConfirmation({
    required this.hash,
    required this.phoneNumber,
  });

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  static const String constructor = 'internalLinkTypePhoneNumberConfirmation';

  static InternalLinkTypePhoneNumberConfirmation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePhoneNumberConfirmation(
      hash: (json['hash'] as String?) ?? '',
      phoneNumber: (json['phone_number'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hash': hash,
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypePhoneNumberConfirmation &&
          const DeepCollectionEquality().equals(other.hash, hash) &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(hash),
        const DeepCollectionEquality().hash(phoneNumber)
      ]);
}
