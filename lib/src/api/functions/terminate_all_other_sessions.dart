// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Terminates all other sessions of the current user
/// Returns [Ok]
@immutable
class TerminateAllOtherSessions extends TdFunction {
  const TerminateAllOtherSessions();

  static const String constructor = 'terminateAllOtherSessions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is TerminateAllOtherSessions);

  @override
  int get hashCode => runtimeType.hashCode;
}
