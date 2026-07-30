import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Computes time needed to receive a response from a Telegram server through
/// a proxy. Can be called before authorization
/// Returns [Seconds]
@immutable
class PingProxy extends TdFunction {
  const PingProxy({
    this.proxy,
  });

  /// [proxy] The proxy to test; pass null to ping a Telegram server without a
  /// proxy
  final Proxy? proxy;

  static const String constructor = 'pingProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy': proxy?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
