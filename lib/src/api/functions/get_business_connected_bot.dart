// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the business bot that is connected to the current user account.
/// Returns a 404 error if there is no connected bot
/// Returns [BusinessConnectedBot]
@immutable
class GetBusinessConnectedBot extends TdFunction {
  const GetBusinessConnectedBot();

  static const String constructor = 'getBusinessConnectedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetBusinessConnectedBot);

  @override
  int get hashCode => runtimeType.hashCode;
}
