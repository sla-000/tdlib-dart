import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a proxy server for network requests. Can be called before
/// authorization
/// Returns [AddedProxy]
@immutable
class AddProxy extends TdFunction {
  const AddProxy({
    required this.proxy,
    required this.enable,
    required this.comment,
  });

  /// [proxy] The proxy to add
  final Proxy proxy;

  /// [enable] Pass true to immediately enable the proxy
  final bool enable;

  /// [comment] Comment to set for the proxy
  final String comment;

  static const String constructor = 'addProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy': proxy.toJson(),
        'enable': enable,
        'comment': comment,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
