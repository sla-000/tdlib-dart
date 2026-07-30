// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's email
/// address
@immutable
class InputPassportElementEmailAddress extends InputPassportElement {
  const InputPassportElementEmailAddress({
    required this.emailAddress,
  });

  /// [emailAddress] The email address to be saved
  final String emailAddress;

  static const String constructor = 'inputPassportElementEmailAddress';

  static InputPassportElementEmailAddress? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementEmailAddress(
      emailAddress: (json['email_address'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementEmailAddress &&
          const DeepCollectionEquality()
              .equals(other.emailAddress, emailAddress));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emailAddress)]);
}
