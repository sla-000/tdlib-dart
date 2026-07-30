// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A "Thinking..." placeholder; for pending rich messages only; for bots only
@immutable
class InputPageBlockThinking extends InputPageBlock {
  const InputPageBlockThinking({
    required this.text,
  });

  /// [text] Text of the placeholder
  final RichText text;

  static const String constructor = 'inputPageBlockThinking';

  static InputPageBlockThinking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockThinking(
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockThinking &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
