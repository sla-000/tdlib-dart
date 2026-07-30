// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Text that must be formatted as if inside a blockquote HTML tag and
/// collapsed by default to 3 lines with the ability to show full text; not
/// supported in secret chats
@immutable
class TextEntityTypeExpandableBlockQuote extends TextEntityType {
  const TextEntityTypeExpandableBlockQuote();

  static const String constructor = 'textEntityTypeExpandableBlockQuote';

  static TextEntityTypeExpandableBlockQuote? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeExpandableBlockQuote();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TextEntityTypeExpandableBlockQuote);

  @override
  int get hashCode => runtimeType.hashCode;
}
