// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Replaces text entities with Markdown formatting in a human-friendly
/// format. Entities that can't be represented in Markdown unambiguously are
/// kept as is. Can be called synchronously
/// Returns [FormattedText]
@immutable
class GetMarkdownText extends TdFunction {
  const GetMarkdownText({
    required this.text,
  });

  /// [text] The text
  final FormattedText text;

  static const String constructor = 'getMarkdownText';

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
          other is GetMarkdownText &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
