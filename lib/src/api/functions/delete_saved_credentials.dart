// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes saved credentials for all payment provider bots
/// Returns [Ok]
@immutable
class DeleteSavedCredentials extends TdFunction {
  const DeleteSavedCredentials();

  static const String constructor = 'deleteSavedCredentials';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is DeleteSavedCredentials);

  @override
  int get hashCode => runtimeType.hashCode;
}
