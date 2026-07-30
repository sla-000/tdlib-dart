// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about an encrypted Telegram Passport element; for
/// bots only
@immutable
class EncryptedPassportElement extends TdObject {
  const EncryptedPassportElement({
    required this.type,
    required this.data,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
    required this.files,
    required this.value,
    required this.hash,
  });

  /// [type] Type of Telegram Passport element
  final PassportElementType type;

  /// [data] Encrypted JSON-encoded data about the user
  final String data;

  /// [frontSide] The front side of an identity document
  final DatedFile frontSide;

  /// [reverseSide] The reverse side of an identity document; may be null
  final DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  final DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<DatedFile> translation;

  /// [files] List of attached files
  final List<DatedFile> files;

  /// [value] Unencrypted data, phone number or email address
  final String value;

  /// [hash] Hash of the entire element
  final String hash;

  static const String constructor = 'encryptedPassportElement';

  static EncryptedPassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EncryptedPassportElement(
      type:
          PassportElementType.fromJson(json['type'] as Map<String, dynamic>?)!,
      data: json['data'] as String,
      frontSide:
          DatedFile.fromJson(json['front_side'] as Map<String, dynamic>?)!,
      reverseSide:
          DatedFile.fromJson(json['reverse_side'] as Map<String, dynamic>?),
      selfie: DatedFile.fromJson(json['selfie'] as Map<String, dynamic>?),
      translation: List<DatedFile>.from(
          ((json['translation'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => DatedFile.fromJson(item))
              .toList()),
      files: List<DatedFile>.from(
          ((json['files'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => DatedFile.fromJson(item))
              .toList()),
      value: json['value'] as String,
      hash: json['hash'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'data': data,
        'front_side': frontSide.toJson(),
        'reverse_side': reverseSide?.toJson(),
        'selfie': selfie?.toJson(),
        'translation': translation.map((item) => item.toJson()).toList(),
        'files': files.map((item) => item.toJson()).toList(),
        'value': value,
        'hash': hash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EncryptedPassportElement &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.data, data) &&
          const DeepCollectionEquality().equals(other.frontSide, frontSide) &&
          const DeepCollectionEquality()
              .equals(other.reverseSide, reverseSide) &&
          const DeepCollectionEquality().equals(other.selfie, selfie) &&
          const DeepCollectionEquality()
              .equals(other.translation, translation) &&
          const DeepCollectionEquality().equals(other.files, files) &&
          const DeepCollectionEquality().equals(other.value, value) &&
          const DeepCollectionEquality().equals(other.hash, hash));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(data),
        const DeepCollectionEquality().hash(frontSide),
        const DeepCollectionEquality().hash(reverseSide),
        const DeepCollectionEquality().hash(selfie),
        const DeepCollectionEquality().hash(translation),
        const DeepCollectionEquality().hash(files),
        const DeepCollectionEquality().hash(value),
        const DeepCollectionEquality().hash(hash)
      ]);
}
