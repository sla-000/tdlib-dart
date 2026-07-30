// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns an affiliate program that was connected to the given affiliate by
/// identifier of the bot that created the program
/// Returns [ConnectedAffiliateProgram]
@immutable
class GetConnectedAffiliateProgram extends TdFunction {
  const GetConnectedAffiliateProgram({
    required this.affiliate,
    required this.botUserId,
  });

  /// [affiliate] The affiliate to which the affiliate program will be connected
  final AffiliateType affiliate;

  /// [botUserId] Identifier of the bot that created the program
  final int botUserId;

  static const String constructor = 'getConnectedAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'affiliate': affiliate.toJson(),
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetConnectedAffiliateProgram &&
          const DeepCollectionEquality().equals(other.affiliate, affiliate) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(affiliate),
        const DeepCollectionEquality().hash(botUserId)
      ]);
}
