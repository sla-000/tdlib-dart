// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes parameters for age verification of the current user
@immutable
class AgeVerificationParameters extends TdObject {
  const AgeVerificationParameters({
    required this.minAge,
    required this.verificationBotUsername,
    required this.country,
  });

  /// [minAge] The minimum age required to view restricted content
  final int minAge;

  /// [verificationBotUsername] Username of the bot which main Web App may be
  /// used to verify age of the user
  final String verificationBotUsername;

  /// [country] Unique name for the country or region, which legislation
  /// required age verification. May be used to get the corresponding
  /// localization key
  final String country;

  static const String constructor = 'ageVerificationParameters';

  static AgeVerificationParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AgeVerificationParameters(
      minAge: json['min_age'] as int,
      verificationBotUsername: json['verification_bot_username'] as String,
      country: json['country'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'min_age': minAge,
        'verification_bot_username': verificationBotUsername,
        'country': country,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AgeVerificationParameters &&
          const DeepCollectionEquality().equals(other.minAge, minAge) &&
          const DeepCollectionEquality()
              .equals(other.verificationBotUsername, verificationBotUsername) &&
          const DeepCollectionEquality().equals(other.country, country));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(minAge),
        const DeepCollectionEquality().hash(verificationBotUsername),
        const DeepCollectionEquality().hash(country)
      ]);
}
