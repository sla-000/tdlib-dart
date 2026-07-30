// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a URL for Telegram Star withdrawal
/// Returns [HttpUrl]
@immutable
class GetStarWithdrawalUrl extends TdFunction {
  const GetStarWithdrawalUrl({
    required this.ownerId,
    required this.starCount,
    required this.password,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier
  /// of the current user, an owned bot, or an owned supergroup or channel chat
  final MessageSender ownerId;

  /// [starCount] The number of Telegram Stars to withdraw; must be between
  /// getOption("star_withdrawal_count_min") and
  /// getOption("star_withdrawal_count_max")
  final int starCount;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getStarWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'star_count': starCount,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStarWithdrawalUrl &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(password)
      ]);
}
