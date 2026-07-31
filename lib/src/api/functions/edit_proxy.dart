// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits an existing proxy server for network requests. Can be called before
/// authorization
/// Returns [AddedProxy]
@immutable
class EditProxy extends TdFunction {
  const EditProxy({
    required this.proxyId,
    required this.proxy,
    required this.enable,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// [proxy] The new information about the proxy
  final Proxy proxy;

  /// [enable] Pass true to immediately enable the proxy
  final bool enable;

  static const String constructor = 'editProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy_id': proxyId,
        'proxy': proxy.toJson(),
        'enable': enable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditProxy &&
          const DeepCollectionEquality().equals(other.proxyId, proxyId) &&
          const DeepCollectionEquality().equals(other.proxy, proxy) &&
          const DeepCollectionEquality().equals(other.enable, enable));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(proxyId),
        const DeepCollectionEquality().hash(proxy),
        const DeepCollectionEquality().hash(enable)
      ]);
}
