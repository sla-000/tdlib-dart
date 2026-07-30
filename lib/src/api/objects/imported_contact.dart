// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a contact to import
@immutable
class ImportedContact extends TdObject {
  const ImportedContact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    this.note,
  });

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [firstName] First name of the user; 1-64 characters
  final String firstName;

  /// [lastName] Last name of the user; 0-64 characters
  final String lastName;

  /// [note] Note to add about the user;
  /// 0-getOption("user_note_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed; pass null to keep the current user's note
  final FormattedText? note;

  static const String constructor = 'importedContact';

  static ImportedContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ImportedContact(
      phoneNumber: (json['phone_number'] as String?) ?? '',
      firstName: (json['first_name'] as String?) ?? '',
      lastName: (json['last_name'] as String?) ?? '',
      note: FormattedText.fromJson(json['note'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'first_name': firstName,
        'last_name': lastName,
        'note': note?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ImportedContact &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.firstName, firstName) &&
          const DeepCollectionEquality().equals(other.lastName, lastName) &&
          const DeepCollectionEquality().equals(other.note, note));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(note)
      ]);
}
