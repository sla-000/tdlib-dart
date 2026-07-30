// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the total number of imported contacts
/// Returns [Count]
@immutable
class GetImportedContactCount extends TdFunction {
  const GetImportedContactCount();

  static const String constructor = 'getImportedContactCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetImportedContactCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
