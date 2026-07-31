// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns token of a created bot; for bots only
/// Returns [Text]
@immutable
class GetBotToken extends TdFunction {
  const GetBotToken({
    required this.botUserId,
    required this.revoke,
  });

  /// [botUserId] Identifier of the created bot
  final int botUserId;

  /// [revoke] Pass true to revoke the current token and create a new one
  final bool revoke;

  static const String constructor = 'getBotToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'revoke': revoke,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBotToken &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.revoke, revoke));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(revoke)
      ]);
}
