import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a country
@immutable
class CountryInfo extends TdObject {
  const CountryInfo({
    required this.countryCode,
    required this.name,
    required this.englishName,
    required this.flagEmoji,
    required this.isHidden,
    required this.callingCodes,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// [name] Native name of the country
  final String name;

  /// [englishName] English name of the country
  final String englishName;

  /// [flagEmoji] An emoji for the flag of the country; may be empty if unknown
  final String flagEmoji;

  /// [isHidden] True, if the country must be hidden from the list of all
  /// countries
  final bool isHidden;

  /// [callingCodes] List of country calling codes
  final List<String> callingCodes;

  static const String constructor = 'countryInfo';

  static CountryInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CountryInfo(
      countryCode: json['country_code'] as String,
      name: json['name'] as String,
      englishName: json['english_name'] as String,
      flagEmoji: json['flag_emoji'] as String,
      isHidden: json['is_hidden'] as bool,
      callingCodes: List<String>.from(
          ((json['calling_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'country_code': countryCode,
        'name': name,
        'english_name': englishName,
        'flag_emoji': flagEmoji,
        'is_hidden': isHidden,
        'calling_codes': callingCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
