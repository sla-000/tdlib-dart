// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of available chat boost slots for the current user
/// Returns [ChatBoostSlots]
@immutable
class GetAvailableChatBoostSlots extends TdFunction {
  const GetAvailableChatBoostSlots();

  static const String constructor = 'getAvailableChatBoostSlots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetAvailableChatBoostSlots);

  @override
  int get hashCode => runtimeType.hashCode;
}
