// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks a web token to log in to the corresponding account; for official
/// Telegram apps only. Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber or
/// authorizationStateWaitOtherDeviceConfirmation
/// Returns [Ok]
@immutable
class CheckAuthenticationWebToken extends TdFunction {
  const CheckAuthenticationWebToken({
    required this.token,
    required this.dcId,
  });

  /// [token] The token to check
  final String token;

  /// [dcId] Identifier of the datacenter of the user
  final int dcId;

  static const String constructor = 'checkAuthenticationWebToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        'dc_id': dcId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckAuthenticationWebToken &&
          const DeepCollectionEquality().equals(other.token, token) &&
          const DeepCollectionEquality().equals(other.dcId, dcId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(token),
        const DeepCollectionEquality().hash(dcId)
      ]);
}
