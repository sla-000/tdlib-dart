// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current authorization state. This is an offline method. For
/// informational purposes only. Use updateAuthorizationState instead to
/// maintain the current authorization state. Can be called before
/// initialization
/// Returns [AuthorizationState]
@immutable
class GetAuthorizationState extends TdFunction {
  const GetAuthorizationState();

  static const String constructor = 'getAuthorizationState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetAuthorizationState);

  @override
  int get hashCode => runtimeType.hashCode;
}
