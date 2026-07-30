// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an IETF language tag of the language preferred in the country,
/// which must be used to fill native fields in Telegram Passport personal
/// details. Returns a 404 error if unknown
/// Returns [Text]
@immutable
class GetPreferredCountryLanguage extends TdFunction {
  const GetPreferredCountryLanguage({
    required this.countryCode,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  static const String constructor = 'getPreferredCountryLanguage';

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
          other is GetPreferredCountryLanguage &&
          const DeepCollectionEquality()
              .equals(other.countryCode, countryCode));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(countryCode)]);
}
