import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
    required this.comment,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  /// [proxy] The new information about the proxy
  final Proxy proxy;

  /// [enable] Pass true to immediately enable the proxy
  final bool enable;

  /// [comment] New comment for the proxy
  final String comment;

  static const String constructor = 'editProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy_id': proxyId,
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
