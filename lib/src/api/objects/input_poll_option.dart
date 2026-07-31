// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes one answer option of a poll to be created
@immutable
class InputPollOption extends TdObject {
  const InputPollOption({
    required this.text,
  });

  /// [text] Option text; 1-100 characters. Only custom emoji entities are
  /// allowed to be added and only by Premium users
  final FormattedText text;

  static const String constructor = 'inputPollOption';

  static InputPollOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollOption(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
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
          other is InputPollOption &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(text)]);
}
