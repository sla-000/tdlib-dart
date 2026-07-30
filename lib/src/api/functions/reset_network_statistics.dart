// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Resets all network data usage statistics to zero. Can be called before
/// authorization
/// Returns [Ok]
@immutable
class ResetNetworkStatistics extends TdFunction {
  const ResetNetworkStatistics();

  static const String constructor = 'resetNetworkStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ResetNetworkStatistics);

  @override
  int get hashCode => runtimeType.hashCode;
}
