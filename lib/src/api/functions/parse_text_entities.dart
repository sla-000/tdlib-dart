// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji,
/// BlockQuote, ExpandableBlockQuote, Code, Pre, PreCode, TextUrl,
/// MentionName, and DateTime entities from a marked-up text. Can be called
/// synchronously
/// Returns [FormattedText]
@immutable
class ParseTextEntities extends TdFunction {
  const ParseTextEntities({
    required this.text,
    required this.parseMode,
  });

  /// [text] The text to parse
  final String text;

  /// [parseMode] Text parse mode
  final TextParseMode parseMode;

  static const String constructor = 'parseTextEntities';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'parse_mode': parseMode.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ParseTextEntities &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.parseMode, parseMode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(parseMode)
      ]);
}
