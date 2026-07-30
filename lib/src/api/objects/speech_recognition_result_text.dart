// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The speech recognition successfully finished
@immutable
class SpeechRecognitionResultText extends SpeechRecognitionResult {
  const SpeechRecognitionResultText({
    required this.text,
  });

  /// [text] Recognized text
  final String text;

  static const String constructor = 'speechRecognitionResultText';

  static SpeechRecognitionResultText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultText(
      text: json['text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SpeechRecognitionResultText &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
