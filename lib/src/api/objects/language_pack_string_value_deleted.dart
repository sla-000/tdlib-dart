// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A deleted language pack string, the value must be taken from the built-in
/// English language pack
@immutable
class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  const LanguagePackStringValueDeleted();

  static const String constructor = 'languagePackStringValueDeleted';

  static LanguagePackStringValueDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LanguagePackStringValueDeleted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LanguagePackStringValueDeleted);

  @override
  int get hashCode => runtimeType.hashCode;
}
