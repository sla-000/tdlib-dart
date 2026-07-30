// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of proxies that are currently set up. Can be called
/// before authorization
/// Returns [AddedProxies]
@immutable
class GetProxies extends TdFunction {
  const GetProxies();

  static const String constructor = 'getProxies';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetProxies);

  @override
  int get hashCode => runtimeType.hashCode;
}
