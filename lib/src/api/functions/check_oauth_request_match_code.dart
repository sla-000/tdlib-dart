// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks a match-code for an OAuth authorization request. If fails, then the
/// authorization request has failed. Otherwise, authorization confirmation
/// dialog must be shown and the link must be processed using
/// acceptOauthRequest or declineOauthRequest
/// Returns [Ok]
@immutable
class CheckOauthRequestMatchCode extends TdFunction {
  const CheckOauthRequestMatchCode({
    required this.url,
    required this.matchCode,
  });

  /// [url] URL of the OAuth deep link
  final String url;

  /// [matchCode] The matching code chosen by the user
  final String matchCode;

  static const String constructor = 'checkOauthRequestMatchCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'match_code': matchCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckOauthRequestMatchCode &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.matchCode, matchCode));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(matchCode)
      ]);
}
