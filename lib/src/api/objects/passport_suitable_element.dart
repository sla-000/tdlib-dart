// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport element that was requested
/// by a service
@immutable
class PassportSuitableElement extends TdObject {
  const PassportSuitableElement({
    required this.type,
    required this.isSelfieRequired,
    required this.isTranslationRequired,
    required this.isNativeNameRequired,
  });

  /// [type] Type of the element
  final PassportElementType type;

  /// [isSelfieRequired] True, if a selfie is required with the identity
  /// document
  final bool isSelfieRequired;

  /// [isTranslationRequired] True, if a certified English translation is
  /// required with the document
  final bool isTranslationRequired;

  /// [isNativeNameRequired] True, if personal details must include the user's
  /// name in the language of their country of residence
  final bool isNativeNameRequired;

  static const String constructor = 'passportSuitableElement';

  static PassportSuitableElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportSuitableElement(
      type:
          PassportElementType.fromJson(json['type'] as Map<String, dynamic>?)!,
      isSelfieRequired: (json['is_selfie_required'] as bool?) ?? false,
      isTranslationRequired:
          (json['is_translation_required'] as bool?) ?? false,
      isNativeNameRequired: (json['is_native_name_required'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'is_selfie_required': isSelfieRequired,
        'is_translation_required': isTranslationRequired,
        'is_native_name_required': isNativeNameRequired,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportSuitableElement &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality()
              .equals(other.isSelfieRequired, isSelfieRequired) &&
          const DeepCollectionEquality()
              .equals(other.isTranslationRequired, isTranslationRequired) &&
          const DeepCollectionEquality()
              .equals(other.isNativeNameRequired, isNativeNameRequired));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(isSelfieRequired),
        const DeepCollectionEquality().hash(isTranslationRequired),
        const DeepCollectionEquality().hash(isNativeNameRequired)
      ]);
}
