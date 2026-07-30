// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text paragraph
@immutable
class InputPageBlockParagraph extends InputPageBlock {
  const InputPageBlockParagraph({
    required this.text,
  });

  /// [text] Paragraph text
  final RichText text;

  static const String constructor = 'inputPageBlockParagraph';

  static InputPageBlockParagraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockParagraph(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockParagraph &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
