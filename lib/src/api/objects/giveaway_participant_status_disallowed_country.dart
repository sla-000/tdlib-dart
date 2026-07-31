// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user can't participate in the giveaway, because they phone number is
/// from a disallowed country
@immutable
class GiveawayParticipantStatusDisallowedCountry
    extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusDisallowedCountry({
    required this.userCountryCode,
  });

  /// [userCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the
  /// user's country
  final String userCountryCode;

  static const String constructor =
      'giveawayParticipantStatusDisallowedCountry';

  static GiveawayParticipantStatusDisallowedCountry? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusDisallowedCountry(
      userCountryCode: (json['user_country_code'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_country_code': userCountryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiveawayParticipantStatusDisallowedCountry &&
          const DeepCollectionEquality()
              .equals(other.userCountryCode, userCountryCode));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userCountryCode)]);
}
