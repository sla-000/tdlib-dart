// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of bots similar to the given bot
/// Returns [Users]
@immutable
class GetBotSimilarBots extends TdFunction {
  const GetBotSimilarBots({
    required this.botUserId,
  });

  /// [botUserId] User identifier of the target bot
  final int botUserId;

  static const String constructor = 'getBotSimilarBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBotSimilarBots &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
