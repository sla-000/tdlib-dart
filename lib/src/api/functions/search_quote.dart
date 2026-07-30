// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for a given quote in a text. Returns found quote start position
/// in UTF-16 code units. Returns a 404 error if the quote is not found. Can
/// be called synchronously
/// Returns [FoundPosition]
@immutable
class SearchQuote extends TdFunction {
  const SearchQuote({
    required this.text,
    required this.quote,
    required this.quotePosition,
  });

  /// [text] Text in which to search for the quote
  final FormattedText text;

  /// [quote] Quote to search for
  final FormattedText quote;

  /// [quotePosition] Approximate quote position in UTF-16 code units
  final int quotePosition;

  static const String constructor = 'searchQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'quote': quote.toJson(),
        'quote_position': quotePosition,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchQuote &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.quote, quote) &&
          const DeepCollectionEquality()
              .equals(other.quotePosition, quotePosition));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(quote),
        const DeepCollectionEquality().hash(quotePosition)
      ]);
}
