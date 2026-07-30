import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a URL for TON Gram withdrawal from the current user's account. The
/// user must have at least 10 Grams to withdraw and can withdraw up to 100000
/// Grams in one transaction
/// Returns [HttpUrl]
@immutable
class GetGramWithdrawalUrl extends TdFunction {
  const GetGramWithdrawalUrl({
    required this.password,
  });

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getGramWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
