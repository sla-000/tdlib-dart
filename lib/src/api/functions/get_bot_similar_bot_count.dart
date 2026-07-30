// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns approximate number of bots similar to the given bot
/// Returns [Count]
@immutable
class GetBotSimilarBotCount extends TdFunction {
  const GetBotSimilarBotCount({
    required this.botUserId,
    required this.returnLocal,
  });

  /// [botUserId] User identifier of the target bot
  final int botUserId;

  /// [returnLocal] Pass true to get the number of bots without sending network
  /// requests, or -1 if the number of bots is unknown locally
  final bool returnLocal;

  static const String constructor = 'getBotSimilarBotCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'return_local': returnLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBotSimilarBotCount &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.returnLocal, returnLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(returnLocal)
      ]);
}
