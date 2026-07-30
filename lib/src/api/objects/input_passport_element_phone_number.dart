// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's phone number
@immutable
class InputPassportElementPhoneNumber extends InputPassportElement {
  const InputPassportElementPhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] The phone number to be saved
  final String phoneNumber;

  static const String constructor = 'inputPassportElementPhoneNumber';

  static InputPassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPhoneNumber(
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
          other is InputPassportElementPhoneNumber &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(phoneNumber)]);
}
