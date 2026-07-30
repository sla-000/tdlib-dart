// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a string stored in the local database from the specified
/// localization target and language pack by its key. Returns a 404 error if
/// the string is not found. Can be called synchronously
/// Returns [LanguagePackStringValue]
@immutable
class GetLanguagePackString extends TdFunction {
  const GetLanguagePackString({
    required this.languagePackDatabasePath,
    required this.localizationTarget,
    required this.languagePackId,
    required this.key,
  });

  /// [languagePackDatabasePath] Path to the language pack database in which
  /// strings are stored
  final String languagePackDatabasePath;

  /// [localizationTarget] Localization target to which the language pack
  /// belongs
  final String localizationTarget;

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  /// [key] Language pack key of the string to be returned
  final String key;

  static const String constructor = 'getLanguagePackString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_database_path': languagePackDatabasePath,
        'localization_target': localizationTarget,
        'language_pack_id': languagePackId,
        'key': key,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetLanguagePackString &&
          const DeepCollectionEquality().equals(
              other.languagePackDatabasePath, languagePackDatabasePath) &&
          const DeepCollectionEquality()
              .equals(other.localizationTarget, localizationTarget) &&
          const DeepCollectionEquality()
              .equals(other.languagePackId, languagePackId) &&
          const DeepCollectionEquality().equals(other.key, key));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(languagePackDatabasePath),
        const DeepCollectionEquality().hash(localizationTarget),
        const DeepCollectionEquality().hash(languagePackId),
        const DeepCollectionEquality().hash(key)
      ]);
}
