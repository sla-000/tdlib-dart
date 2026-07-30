import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Fixes text using an AI model; must not be used in secret chats. May return
/// an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is
/// required to send further requests
/// Returns [FixedText]
@immutable
class FixTextWithAi extends TdFunction {
  const FixTextWithAi({
    required this.text,
  });

  /// [text] The original text
  final FormattedText text;

  static const String constructor = 'fixTextWithAi';

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
