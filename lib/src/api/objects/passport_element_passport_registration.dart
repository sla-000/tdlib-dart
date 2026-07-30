// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's passport registration
/// pages
@immutable
class PassportElementPassportRegistration extends PassportElement {
  const PassportElementPassportRegistration({
    required this.passportRegistration,
  });

  /// [passportRegistration] Passport registration pages
  final PersonalDocument passportRegistration;

  static const String constructor = 'passportElementPassportRegistration';

  static PassportElementPassportRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPassportRegistration(
      passportRegistration: PersonalDocument.fromJson(
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
          other is PassportElementPassportRegistration &&
          const DeepCollectionEquality()
              .equals(other.passportRegistration, passportRegistration));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(passportRegistration)]);
}
