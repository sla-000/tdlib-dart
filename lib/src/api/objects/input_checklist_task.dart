// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a task in a checklist to be sent
@immutable
class InputChecklistTask extends TdObject {
  const InputChecklistTask({
    required this.id,
    required this.text,
  });

  /// [id] Unique identifier of the task; must be positive
  final int id;

  /// [text] Text of the task; 1-getOption("checklist_task_text_length_max")
  /// characters without line feeds. May contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, CustomEmoji, and DateTime entities
  final FormattedText text;

  static const String constructor = 'inputChecklistTask';

  static InputChecklistTask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChecklistTask(
      id: json['id'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputChecklistTask &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(text)
      ]);
}
