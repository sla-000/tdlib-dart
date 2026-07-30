// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether the current session can be used to transfer a chat
/// ownership to another user
/// Returns [CanTransferOwnershipResult]
@immutable
class CanTransferOwnership extends TdFunction {
  const CanTransferOwnership();

  static const String constructor = 'canTransferOwnership';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CanTransferOwnership);

  @override
  int get hashCode => runtimeType.hashCode;
}
