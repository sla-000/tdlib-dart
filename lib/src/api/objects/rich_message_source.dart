import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a rich message
@immutable
abstract class RichMessageSource extends TdObject {
  const RichMessageSource();

  static const String constructor = 'richMessageSource';

  /// Inherited by:
  /// [RichMessageSourceBlocks]
  /// [RichMessageSourceHtml]
  /// [RichMessageSourceMarkdown]
  static RichMessageSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case RichMessageSourceBlocks.constructor:
        return RichMessageSourceBlocks.fromJson(json);
      case RichMessageSourceHtml.constructor:
        return RichMessageSourceHtml.fromJson(json);
      case RichMessageSourceMarkdown.constructor:
        return RichMessageSourceMarkdown.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
