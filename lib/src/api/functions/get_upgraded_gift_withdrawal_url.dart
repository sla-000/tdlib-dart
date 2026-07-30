// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a URL for upgraded gift withdrawal in the TON blockchain as an
/// NFT; requires owner privileges for gifts owned by a chat
/// Returns [HttpUrl]
@immutable
class GetUpgradedGiftWithdrawalUrl extends TdFunction {
  const GetUpgradedGiftWithdrawalUrl({
    required this.receivedGiftId,
    required this.password,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getUpgradedGiftWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetUpgradedGiftWithdrawalUrl &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(password)
      ]);
}
