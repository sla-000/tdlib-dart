// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A reference
@immutable
class RichTextReference extends RichText {
  const RichTextReference({
    required this.name,
    required this.text,
  });

  /// [name] Reference name
  final String name;

  /// [text] Text of the reference
  final RichText text;

  static const String constructor = 'richTextReference';

  static RichTextReference? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReference(
      name: json['name'] as String,
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextReference &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(text)
      ]);
}
