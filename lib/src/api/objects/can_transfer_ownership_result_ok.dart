// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The session can be used
@immutable
class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultOk();

  static const String constructor = 'canTransferOwnershipResultOk';

  static CanTransferOwnershipResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultOk();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanTransferOwnershipResultOk);

  @override
  int get hashCode => runtimeType.hashCode;
}
