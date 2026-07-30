// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's driver
/// license
@immutable
class InputPassportElementDriverLicense extends InputPassportElement {
  const InputPassportElementDriverLicense({
    required this.driverLicense,
  });

  /// [driverLicense] The driver license to be saved
  final InputIdentityDocument driverLicense;

  static const String constructor = 'inputPassportElementDriverLicense';

  static InputPassportElementDriverLicense? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementDriverLicense(
      driverLicense: InputIdentityDocument.fromJson(
          json['driver_license'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'driver_license': driverLicense.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementDriverLicense &&
          const DeepCollectionEquality()
              .equals(other.driverLicense, driverLicense));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(driverLicense)]);
}
