// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A spoilered rich text
@immutable
class RichTextSpoiler extends RichText {
  const RichTextSpoiler({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  static const String constructor = 'richTextSpoiler';

  static RichTextSpoiler? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSpoiler(
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
          other is RichTextSpoiler &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
