// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Disables the currently enabled proxy. Can be called before authorization
/// Returns [Ok]
@immutable
class DisableProxy extends TdFunction {
  const DisableProxy();

  static const String constructor = 'disableProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is DisableProxy);

  @override
  int get hashCode => runtimeType.hashCode;
}
