// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a simple network request to the Telegram servers via proxy; for
/// testing only. Can be called before authorization
/// Returns [Ok]
@immutable
class TestProxy extends TdFunction {
  const TestProxy({
    required this.proxy,
    required this.dcId,
    required this.timeout,
  });

  /// [proxy] The proxy to test
  final Proxy proxy;

  /// [dcId] Identifier of a datacenter with which to test connection
  final int dcId;

  /// [timeout] The maximum overall timeout for the request
  final double timeout;

  static const String constructor = 'testProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy': proxy.toJson(),
        'dc_id': dcId,
        'timeout': timeout,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestProxy &&
          const DeepCollectionEquality().equals(other.proxy, proxy) &&
          const DeepCollectionEquality().equals(other.dcId, dcId) &&
          const DeepCollectionEquality().equals(other.timeout, timeout));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(proxy),
        const DeepCollectionEquality().hash(dcId),
        const DeepCollectionEquality().hash(timeout)
      ]);
}
