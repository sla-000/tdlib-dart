// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's passport
/// registration
@immutable
class InputPassportElementPassportRegistration extends InputPassportElement {
  const InputPassportElementPassportRegistration({
    required this.passportRegistration,
  });

  /// [passportRegistration] The passport registration page to be saved
  final InputPersonalDocument passportRegistration;

  static const String constructor = 'inputPassportElementPassportRegistration';

  static InputPassportElementPassportRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPassportRegistration(
      passportRegistration: InputPersonalDocument.fromJson(
          json['passport_registration'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'passport_registration': passportRegistration.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementPassportRegistration &&
          const DeepCollectionEquality()
              .equals(other.passportRegistration, passportRegistration));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(passportRegistration)]);
}
