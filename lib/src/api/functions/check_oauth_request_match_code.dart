import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
