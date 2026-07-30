import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A section heading
@immutable
class PageBlockSectionHeading extends PageBlock {
  const PageBlockSectionHeading({
    required this.text,
    required this.size,
  });

  /// [text] Text of the section heading
  final RichText text;

  /// [size] Relative size of the text font; 1-6, 1 is the largest, 6 is the
  /// smallest
  final int size;

  static const String constructor = 'pageBlockSectionHeading';

  static PageBlockSectionHeading? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSectionHeading(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      size: json['size'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'size': size,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
