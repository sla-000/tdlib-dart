// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a call
@immutable
abstract class InputCall extends TdObject {
  const InputCall();

  static const String constructor = 'inputCall';

  /// Inherited by:
  /// [InputCallDiscarded]
  /// [InputCallFromMessage]
  static InputCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputCallDiscarded.constructor:
        return InputCallDiscarded.fromJson(json);
      case InputCallFromMessage.constructor:
        return InputCallFromMessage.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputCall);

  @override
  int get hashCode => runtimeType.hashCode;
}
