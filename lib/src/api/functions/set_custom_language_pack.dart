// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds or changes a custom local language pack to the current localization
/// target
/// Returns [Ok]
@immutable
class SetCustomLanguagePack extends TdFunction {
  const SetCustomLanguagePack({
    required this.info,
    required this.strings,
  });

  /// [info] Information about the language pack. Language pack identifier must
  /// start with 'X', consist only of English letters, digits and hyphens, and
  /// must not exceed 64 characters. Can be called before authorization
  final LanguagePackInfo info;

  /// [strings] Strings of the new language pack
  final List<LanguagePackString> strings;

  static const String constructor = 'setCustomLanguagePack';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'info': info.toJson(),
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetCustomLanguagePack &&
          const DeepCollectionEquality().equals(other.info, info) &&
          const DeepCollectionEquality().equals(other.strings, strings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(info),
        const DeepCollectionEquality().hash(strings)
      ]);
}
