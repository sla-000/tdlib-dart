// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes source of a rich message
@immutable
abstract class RichMessageSource extends TdObject {
  const RichMessageSource();

  static const String constructor = 'richMessageSource';

  /// Inherited by:
  /// [RichMessageSourceHtml]
  /// [RichMessageSourceMarkdown]
  static RichMessageSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is RichMessageSource);

  @override
  int get hashCode => runtimeType.hashCode;
}
