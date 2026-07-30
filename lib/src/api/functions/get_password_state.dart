// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current state of 2-step verification
/// Returns [PasswordState]
@immutable
class GetPasswordState extends TdFunction {
  const GetPasswordState();

  static const String constructor = 'getPasswordState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetPasswordState);

  @override
  int get hashCode => runtimeType.hashCode;
}
