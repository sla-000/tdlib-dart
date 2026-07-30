// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds, edits or deletes a string in a custom local language pack. Can be
/// called before authorization
/// Returns [Ok]
@immutable
class SetCustomLanguagePackString extends TdFunction {
  const SetCustomLanguagePackString({
    required this.languagePackId,
    required this.newString,
  });

  /// [languagePackId] Identifier of a previously added custom local language
  /// pack in the current localization target
  final String languagePackId;

  /// [newString] New language pack string
  final LanguagePackString newString;

  static const String constructor = 'setCustomLanguagePackString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_id': languagePackId,
        'new_string': newString.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetCustomLanguagePackString &&
          const DeepCollectionEquality()
              .equals(other.languagePackId, languagePackId) &&
          const DeepCollectionEquality().equals(other.newString, newString));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(languagePackId),
        const DeepCollectionEquality().hash(newString)
      ]);
}
