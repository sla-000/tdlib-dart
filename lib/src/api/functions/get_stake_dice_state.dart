import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
