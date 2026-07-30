// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current state of stake dice
/// Returns [StakeDiceState]
@immutable
class GetStakeDiceState extends TdFunction {
  const GetStakeDiceState();

  static const String constructor = 'getStakeDiceState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetStakeDiceState);

  @override
  int get hashCode => runtimeType.hashCode;
}
