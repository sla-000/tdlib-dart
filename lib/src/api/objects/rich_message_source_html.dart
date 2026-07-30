// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An HTML-formatted rich message; for bots only
@immutable
class RichMessageSourceHtml extends RichMessageSource {
  const RichMessageSourceHtml({
    required this.text,
  });

  /// [text] HTML-formatted text of the message
  final String text;

  static const String constructor = 'richMessageSourceHtml';

  static RichMessageSourceHtml? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessageSourceHtml(
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichMessageSourceHtml &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
