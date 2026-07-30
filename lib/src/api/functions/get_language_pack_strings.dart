// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns strings from a language pack in the current localization target by
/// their keys. Can be called before authorization
/// Returns [LanguagePackStrings]
@immutable
class GetLanguagePackStrings extends TdFunction {
  const GetLanguagePackStrings({
    required this.languagePackId,
    required this.keys,
  });

  /// [languagePackId] Language pack identifier of the strings to be returned
  final String languagePackId;

  /// [keys] Language pack keys of the strings to be returned; leave empty to
  /// request all available strings
  final List<String> keys;

  static const String constructor = 'getLanguagePackStrings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_id': languagePackId,
        'keys': keys.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetLanguagePackStrings &&
          const DeepCollectionEquality()
              .equals(other.languagePackId, languagePackId) &&
          const DeepCollectionEquality().equals(other.keys, keys));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(languagePackId),
        const DeepCollectionEquality().hash(keys)
      ]);
}
