// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some language pack strings have been updated
@immutable
class UpdateLanguagePackStrings extends Update {
  const UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
  });

  /// [localizationTarget] Localization target to which the language pack
  /// belongs
  final String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack
  final String languagePackId;

  /// [strings] List of changed language pack strings; empty if all strings have
  /// changed
  final List<LanguagePackString> strings;

  static const String constructor = 'updateLanguagePackStrings';

  static UpdateLanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateLanguagePackStrings(
      localizationTarget: (json['localization_target'] as String?) ?? '',
      languagePackId: (json['language_pack_id'] as String?) ?? '',
      strings: List<LanguagePackString>.from(
          ((json['strings'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  LanguagePackString.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'localization_target': localizationTarget,
        'language_pack_id': languagePackId,
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateLanguagePackStrings &&
          const DeepCollectionEquality()
              .equals(other.localizationTarget, localizationTarget) &&
          const DeepCollectionEquality()
              .equals(other.languagePackId, languagePackId) &&
          const DeepCollectionEquality().equals(other.strings, strings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(localizationTarget),
        const DeepCollectionEquality().hash(languagePackId),
        const DeepCollectionEquality().hash(strings)
      ]);
}
