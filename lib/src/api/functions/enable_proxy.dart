// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Enables a proxy. Only one proxy can be enabled at a time. Can be called
/// before authorization
/// Returns [Ok]
@immutable
class EnableProxy extends TdFunction {
  const EnableProxy({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  static const String constructor = 'enableProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy_id': proxyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EnableProxy &&
          const DeepCollectionEquality().equals(other.proxyId, proxyId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(proxyId)]);
}
