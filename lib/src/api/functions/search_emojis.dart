// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for emojis by keywords. Supported only if the file database is
/// enabled. Order of results is unspecified
/// Returns [EmojiKeywords]
@immutable
class SearchEmojis extends TdFunction {
  const SearchEmojis({
    required this.text,
    required this.inputLanguageCodes,
  });

  /// [text] Text to search for
  final String text;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// input language; may be empty if unknown
  final List<String> inputLanguageCodes;

  static const String constructor = 'searchEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'input_language_codes': inputLanguageCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchEmojis &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.inputLanguageCodes, inputLanguageCodes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(inputLanguageCodes)
      ]);
}
