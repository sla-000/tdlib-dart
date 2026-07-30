// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a phone number by its prefix synchronously.
/// getCountries must be called at least once after changing localization to
/// the specified language if properly localized country information is
/// expected. Can be called synchronously
/// Returns [PhoneNumberInfo]
@immutable
class GetPhoneNumberInfoSync extends TdFunction {
  const GetPhoneNumberInfoSync({
    required this.languageCode,
    required this.phoneNumberPrefix,
  });

  /// [languageCode] A two-letter ISO 639-1 language code for country
  /// information localization
  final String languageCode;

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;

  static const String constructor = 'getPhoneNumberInfoSync';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_code': languageCode,
        'phone_number_prefix': phoneNumberPrefix,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPhoneNumberInfoSync &&
          const DeepCollectionEquality()
              .equals(other.languageCode, languageCode) &&
          const DeepCollectionEquality()
              .equals(other.phoneNumberPrefix, phoneNumberPrefix));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(languageCode),
        const DeepCollectionEquality().hash(phoneNumberPrefix)
      ]);
}
