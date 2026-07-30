// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's address
@immutable
class PassportElementAddress extends PassportElement {
  const PassportElementAddress({
    required this.address,
  });

  /// [address] Address
  final Address address;

  static const String constructor = 'passportElementAddress';

  static PassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementAddress(
      address: Address.fromJson(json['address'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'address': address.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementAddress &&
          const DeepCollectionEquality().equals(other.address, address));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(address)]);
}
