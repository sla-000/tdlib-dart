// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's personal
/// details
@immutable
class InputPassportElementPersonalDetails extends InputPassportElement {
  const InputPassportElementPersonalDetails({
    required this.personalDetails,
  });

  /// [personalDetails] Personal details of the user
  final PersonalDetails personalDetails;

  static const String constructor = 'inputPassportElementPersonalDetails';

  static InputPassportElementPersonalDetails? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPersonalDetails(
      personalDetails: PersonalDetails.fromJson(
          json['personal_details'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'personal_details': personalDetails.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementPersonalDetails &&
          const DeepCollectionEquality()
              .equals(other.personalDetails, personalDetails));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(personalDetails)]);
}
