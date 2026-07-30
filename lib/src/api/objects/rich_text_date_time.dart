import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A date and time
@immutable
class RichTextDateTime extends RichText {
  const RichTextDateTime({
    required this.text,
    required this.unixTime,
    this.formattingType,
  });

  /// [text] Original text
  final RichText text;

  /// [unixTime] Point in time (Unix timestamp) representing the date and time
  final int unixTime;

  /// [formattingType] Date and time formatting type; may be null if none and
  /// the original text must not be changed
  final DateTimeFormattingType? formattingType;

  static const String constructor = 'richTextDateTime';

  static RichTextDateTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextDateTime(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      unixTime: json['unix_time'] as int,
      formattingType: DateTimeFormattingType.fromJson(
          json['formatting_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'unix_time': unixTime,
        'formatting_type': formattingType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
