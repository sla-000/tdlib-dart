// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Clears all imported contacts, contact list remains unchanged
/// Returns [Ok]
@immutable
class ClearImportedContacts extends TdFunction {
  const ClearImportedContacts();

  static const String constructor = 'clearImportedContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ClearImportedContacts);

  @override
  int get hashCode => runtimeType.hashCode;
}
