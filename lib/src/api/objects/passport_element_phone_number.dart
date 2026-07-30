// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's phone number
@immutable
class PassportElementPhoneNumber extends PassportElement {
  const PassportElementPhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String constructor = 'passportElementPhoneNumber';

  static PassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPhoneNumber(
      phoneNumber: json['phone_number'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementPhoneNumber &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(phoneNumber)]);
}
