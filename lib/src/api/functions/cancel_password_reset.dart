// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Cancels reset of 2-step verification password. The method can be called if
/// passwordState.pending_reset_date
/// Returns [Ok]
@immutable
class CancelPasswordReset extends TdFunction {
  const CancelPasswordReset();

  static const String constructor = 'cancelPasswordReset';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CancelPasswordReset);

  @override
  int get hashCode => runtimeType.hashCode;
}
