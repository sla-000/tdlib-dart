// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeclineOauthRequest &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(url)]);
}
