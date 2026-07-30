// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's internal
/// passport
@immutable
class InputPassportElementInternalPassport extends InputPassportElement {
  const InputPassportElementInternalPassport({
    required this.internalPassport,
  });

  /// [internalPassport] The internal passport to be saved
  final InputIdentityDocument internalPassport;

  static const String constructor = 'inputPassportElementInternalPassport';

  static InputPassportElementInternalPassport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementInternalPassport(
      internalPassport: InputIdentityDocument.fromJson(
          json['internal_passport'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'internal_passport': internalPassport.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPassportElementInternalPassport &&
          const DeepCollectionEquality()
              .equals(other.internalPassport, internalPassport));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(internalPassport)]);
}
