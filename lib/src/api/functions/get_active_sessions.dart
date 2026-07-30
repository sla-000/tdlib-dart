// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns all active sessions of the current user. Additionally,
/// getBusinessConnectedBot must be used to show the bot on top of active
/// sessions
/// Returns [Sessions]
@immutable
class GetActiveSessions extends TdFunction {
  const GetActiveSessions();

  static const String constructor = 'getActiveSessions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetActiveSessions);

  @override
  int get hashCode => runtimeType.hashCode;
}
