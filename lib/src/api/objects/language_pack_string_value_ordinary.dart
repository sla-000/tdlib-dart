// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An ordinary language pack string
@immutable
class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  const LanguagePackStringValueOrdinary({
    required this.value,
  });

  /// [value] String value
  final String value;

  static const String constructor = 'languagePackStringValueOrdinary';

  static LanguagePackStringValueOrdinary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValueOrdinary(
      value: json['value'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LanguagePackStringValueOrdinary &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
