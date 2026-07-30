// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a fact-check added to the message by an independent checker
@immutable
class FactCheck extends TdObject {
  const FactCheck({
    required this.text,
    required this.countryCode,
  });

  /// [text] Text of the fact-check
  final FormattedText text;

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code of the country
  /// for which the fact-check is shown
  final String countryCode;

  static const String constructor = 'factCheck';

  static FactCheck? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FactCheck(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      countryCode: (json['country_code'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'country_code': countryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FactCheck &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.countryCode, countryCode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(countryCode)
      ]);
}
