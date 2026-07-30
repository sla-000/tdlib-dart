// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's address
@immutable
class InputPassportElementAddress extends InputPassportElement {
  const InputPassportElementAddress({
    required this.address,
  });

  /// [address] The address to be saved
  final Address address;

  static const String constructor = 'inputPassportElementAddress';

  static InputPassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementAddress(
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
          other is InputPassportElementAddress &&
          const DeepCollectionEquality().equals(other.address, address));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(address)]);
}
