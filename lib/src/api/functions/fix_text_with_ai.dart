// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FixTextWithAi &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
