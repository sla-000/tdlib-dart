// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about an existing country. Can be called before
/// authorization
/// Returns [CountryInfo]
@immutable
class GetCountry extends TdFunction {
  const GetCountry({
    required this.countryCode,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  static const String constructor = 'getCountry';

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
          other is GetCountry &&
          const DeepCollectionEquality()
              .equals(other.countryCode, countryCode));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(countryCode)]);
}
