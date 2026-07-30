// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the way the text needs to be parsed for text entities
@immutable
abstract class TextParseMode extends TdObject {
  const TextParseMode();

  static const String constructor = 'textParseMode';

  /// Inherited by:
  /// [TextParseModeHTML]
  /// [TextParseModeMarkdown]
  static TextParseMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TextParseModeHTML.constructor:
        return TextParseModeHTML.fromJson(json);
      case TextParseModeMarkdown.constructor:
        return TextParseModeMarkdown.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is TextParseMode);

  @override
  int get hashCode => runtimeType.hashCode;
}
