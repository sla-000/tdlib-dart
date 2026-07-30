// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a phone number by its prefix. Can be called
/// before authorization
/// Returns [PhoneNumberInfo]
@immutable
class GetPhoneNumberInfo extends TdFunction {
  const GetPhoneNumberInfo({
    required this.phoneNumberPrefix,
  });

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;

  static const String constructor = 'getPhoneNumberInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number_prefix': phoneNumberPrefix,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPhoneNumberInfo &&
          const DeepCollectionEquality()
              .equals(other.phoneNumberPrefix, phoneNumberPrefix));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(phoneNumberPrefix)]);
}
