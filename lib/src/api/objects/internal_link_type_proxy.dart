// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a proxy. Call addProxy with the given parameters to
/// process the link and add the proxy
@immutable
class InternalLinkTypeProxy extends InternalLinkType {
  const InternalLinkTypeProxy({
    this.proxy,
  });

  /// [proxy] The proxy; may be null if the proxy is unsupported, in which case
  /// an alert can be shown to the user
  final Proxy? proxy;

  static const String constructor = 'internalLinkTypeProxy';

  static InternalLinkTypeProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeProxy(
      proxy: Proxy.fromJson(json['proxy'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy': proxy?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeProxy &&
          const DeepCollectionEquality().equals(other.proxy, proxy));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(proxy)]);
}
