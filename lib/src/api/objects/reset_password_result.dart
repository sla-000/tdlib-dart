// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents result of 2-step verification password reset
@immutable
abstract class ResetPasswordResult extends TdObject {
  const ResetPasswordResult();

  static const String constructor = 'resetPasswordResult';

  /// Inherited by:
  /// [ResetPasswordResultDeclined]
  /// [ResetPasswordResultOk]
  /// [ResetPasswordResultPending]
  static ResetPasswordResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ResetPasswordResultDeclined.constructor:
        return ResetPasswordResultDeclined.fromJson(json);
      case ResetPasswordResultOk.constructor:
        return ResetPasswordResultOk.fromJson(json);
      case ResetPasswordResultPending.constructor:
        return ResetPasswordResultPending.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ResetPasswordResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
