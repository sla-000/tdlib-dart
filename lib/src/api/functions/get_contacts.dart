// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns all contacts of the user
/// Returns [Users]
@immutable
class GetContacts extends TdFunction {
  const GetContacts();

  static const String constructor = 'getContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetContacts);

  @override
  int get hashCode => runtimeType.hashCode;
}
