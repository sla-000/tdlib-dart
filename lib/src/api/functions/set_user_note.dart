// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes a note of a contact user
/// Returns [Ok]
@immutable
class SetUserNote extends TdFunction {
  const SetUserNote({
    required this.userId,
    required this.note,
  });

  /// [userId] User identifier
  final int userId;

  /// [note] Note to set for the user; 0-getOption("user_note_text_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler,
  /// CustomEmoji, and DateTime entities are allowed
  final FormattedText note;

  static const String constructor = 'setUserNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'note': note.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUserNote &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.note, note));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(note)
      ]);
}
