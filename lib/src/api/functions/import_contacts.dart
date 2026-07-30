// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds new contacts or edits existing contacts by their phone numbers;
/// contacts' user identifiers are ignored
/// Returns [ImportedContacts]
@immutable
class ImportContacts extends TdFunction {
  const ImportContacts({
    required this.contacts,
  });

  /// [contacts] The list of contacts to import or edit
  final List<ImportedContact> contacts;

  static const String constructor = 'importContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'contacts': contacts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ImportContacts &&
          const DeepCollectionEquality().equals(other.contacts, contacts));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(contacts)]);
}
