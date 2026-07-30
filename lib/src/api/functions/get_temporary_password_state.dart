// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about the current temporary password
/// Returns [TemporaryPasswordState]
@immutable
class GetTemporaryPasswordState extends TdFunction {
  const GetTemporaryPasswordState();

  static const String constructor = 'getTemporaryPasswordState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetTemporaryPasswordState);

  @override
  int get hashCode => runtimeType.hashCode;
}
