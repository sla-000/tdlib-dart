// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An identity document to be saved to Telegram Passport
@immutable
class InputIdentityDocument extends TdObject {
  const InputIdentityDocument({
    required this.number,
    this.expirationDate,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });

  /// [number] Document number; 1-24 characters
  final String number;

  /// [expirationDate] Document expiration date; pass null if not applicable
  final Date? expirationDate;

  /// [frontSide] Front side of the document
  final InputFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and
  /// identity card; pass null otherwise
  final InputFile? reverseSide;

  /// [selfie] Selfie with the document; pass null if unavailable
  final InputFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<InputFile> translation;

  static const String constructor = 'inputIdentityDocument';

  static InputIdentityDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputIdentityDocument(
      number: (json['number'] as String?) ?? '',
      expirationDate:
          Date.fromJson(json['expiration_date'] as Map<String, dynamic>?),
      frontSide:
          InputFile.fromJson(json['front_side'] as Map<String, dynamic>?)!,
      reverseSide:
          InputFile.fromJson(json['reverse_side'] as Map<String, dynamic>?),
      selfie: InputFile.fromJson(json['selfie'] as Map<String, dynamic>?),
      translation: List<InputFile>.from(
          ((json['translation'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => InputFile.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'number': number,
        'expiration_date': expirationDate?.toJson(),
        'front_side': frontSide.toJson(),
        'reverse_side': reverseSide?.toJson(),
        'selfie': selfie?.toJson(),
        'translation': translation.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputIdentityDocument &&
          const DeepCollectionEquality().equals(other.number, number) &&
          const DeepCollectionEquality()
              .equals(other.expirationDate, expirationDate) &&
          const DeepCollectionEquality().equals(other.frontSide, frontSide) &&
          const DeepCollectionEquality()
              .equals(other.reverseSide, reverseSide) &&
          const DeepCollectionEquality().equals(other.selfie, selfie) &&
          const DeepCollectionEquality()
              .equals(other.translation, translation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(number),
        const DeepCollectionEquality().hash(expirationDate),
        const DeepCollectionEquality().hash(frontSide),
        const DeepCollectionEquality().hash(reverseSide),
        const DeepCollectionEquality().hash(selfie),
        const DeepCollectionEquality().hash(translation)
      ]);
}
