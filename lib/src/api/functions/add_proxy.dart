// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a proxy server for network requests. Can be called before
/// authorization
/// Returns [AddedProxy]
@immutable
class AddProxy extends TdFunction {
  const AddProxy({
    required this.proxy,
    required this.enable,
  });

  /// [proxy] The proxy to add
  final Proxy proxy;

  /// [enable] Pass true to immediately enable the proxy
  final bool enable;

  static const String constructor = 'addProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy': proxy.toJson(),
        'enable': enable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddProxy &&
          const DeepCollectionEquality().equals(other.proxy, proxy) &&
          const DeepCollectionEquality().equals(other.enable, enable));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(proxy),
        const DeepCollectionEquality().hash(enable)
      ]);
}
