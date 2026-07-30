// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The speech recognition is ongoing
@immutable
class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  const SpeechRecognitionResultPending({
    required this.partialText,
  });

  /// [partialText] Partially recognized text
  final String partialText;

  static const String constructor = 'speechRecognitionResultPending';

  static SpeechRecognitionResultPending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultPending(
      partialText: (json['partial_text'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'partial_text': partialText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SpeechRecognitionResultPending &&
          const DeepCollectionEquality()
              .equals(other.partialText, partialText));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(partialText)]);
}
