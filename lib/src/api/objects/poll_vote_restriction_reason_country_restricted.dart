// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is from a country, users from which aren't allowed to vote
@immutable
class PollVoteRestrictionReasonCountryRestricted
    extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonCountryRestricted({
    required this.countryCode,
  });

  /// [countryCode] Two-letter ISO 3166-1 alpha-2 code of the current user's
  /// country
  final String countryCode;

  static const String constructor =
      'pollVoteRestrictionReasonCountryRestricted';

  static PollVoteRestrictionReasonCountryRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoteRestrictionReasonCountryRestricted(
      countryCode: (json['country_code'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'country_code': countryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PollVoteRestrictionReasonCountryRestricted &&
          const DeepCollectionEquality()
              .equals(other.countryCode, countryCode));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(countryCode)]);
}
