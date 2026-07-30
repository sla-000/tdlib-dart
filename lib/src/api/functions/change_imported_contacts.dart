// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes imported contacts using the list of contacts saved on the device.
/// Imports newly added contacts and, if at least the file database is
/// enabled, deletes recently deleted contacts. Query result depends on the
/// result of the previous query, so only one query is possible at the same
/// time
/// Returns [ImportedContacts]
@immutable
class ChangeImportedContacts extends TdFunction {
  const ChangeImportedContacts({
    required this.contacts,
  });

  /// [contacts] The new list of contacts to import
  final List<ImportedContact> contacts;

  static const String constructor = 'changeImportedContacts';

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
          other is ChangeImportedContacts &&
          const DeepCollectionEquality().equals(other.contacts, contacts));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(contacts)]);
}
