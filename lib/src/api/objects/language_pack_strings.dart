// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of language pack strings
@immutable
class LanguagePackStrings extends TdObject {
  const LanguagePackStrings({
    required this.strings,
  });

  /// [strings] A list of language pack strings
  final List<LanguagePackString> strings;

  static const String constructor = 'languagePackStrings';

  static LanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStrings(
      strings: List<LanguagePackString>.from(
          ((json['strings'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => LanguagePackString.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'strings': strings.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LanguagePackStrings &&
          const DeepCollectionEquality().equals(other.strings, strings));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(strings)]);
}
