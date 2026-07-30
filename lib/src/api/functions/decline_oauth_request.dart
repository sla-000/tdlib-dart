import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Declines an OAuth authorization request
/// Returns [Ok]
@immutable
class DeclineOauthRequest extends TdFunction {
  const DeclineOauthRequest({
    required this.url,
  });

  /// [url] URL of the OAuth deep link
  final String url;

  static const String constructor = 'declineOauthRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
