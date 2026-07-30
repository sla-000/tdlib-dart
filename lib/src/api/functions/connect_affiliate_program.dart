// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Connects an affiliate program to the given affiliate. Returns information
/// about the connected affiliate program
/// Returns [ConnectedAffiliateProgram]
@immutable
class ConnectAffiliateProgram extends TdFunction {
  const ConnectAffiliateProgram({
    required this.affiliate,
    required this.botUserId,
  });

  /// [affiliate] The affiliate to which the affiliate program will be connected
  final AffiliateType affiliate;

  /// [botUserId] Identifier of the bot, which affiliate program is connected
  final int botUserId;

  static const String constructor = 'connectAffiliateProgram';

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
          other is ConnectAffiliateProgram &&
          const DeepCollectionEquality().equals(other.affiliate, affiliate) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(affiliate),
        const DeepCollectionEquality().hash(botUserId)
      ]);
}
