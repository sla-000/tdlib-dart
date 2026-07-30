import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A "Thinking..." placeholder; for pending rich messages only
@immutable
class PageBlockThinking extends PageBlock {
  const PageBlockThinking({
    required this.text,
  });

  /// [text] Text of the placeholder
  final RichText text;

  static const String constructor = 'pageBlockThinking';

  static PageBlockThinking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockThinking(
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
