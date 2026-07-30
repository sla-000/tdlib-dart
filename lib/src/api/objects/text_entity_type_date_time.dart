import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A date and time
@immutable
class TextEntityTypeDateTime extends TextEntityType {
  const TextEntityTypeDateTime({
    required this.unixTime,
    this.formattingType,
  });

  /// [unixTime] Point in time (Unix timestamp) representing the date and time
  final int unixTime;

  /// [formattingType] Date and time formatting type; may be null if none and
  /// the original text must not be changed
  final DateTimeFormattingType? formattingType;

  static const String constructor = 'textEntityTypeDateTime';

  static TextEntityTypeDateTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeDateTime(
      unixTime: json['unix_time'] as int,
      formattingType: DateTimeFormattingType.fromJson(
          json['formatting_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'unix_time': unixTime,
        'formatting_type': formattingType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
