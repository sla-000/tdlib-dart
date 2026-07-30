// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A preformatted text paragraph
@immutable
class InputPageBlockPreformatted extends InputPageBlock {
  const InputPageBlockPreformatted({
    required this.text,
    required this.language,
  });

  /// [text] Paragraph text
  final RichText text;

  /// [language] Programming language for which the text needs to be formatted
  final String language;

  static const String constructor = 'inputPageBlockPreformatted';

  static InputPageBlockPreformatted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockPreformatted(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      language: (json['language'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'language': language,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockPreformatted &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.language, language));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(language)
      ]);
}
