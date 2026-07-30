// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of media previews of a bot
/// Returns [BotMediaPreviews]
@immutable
class GetBotMediaPreviews extends TdFunction {
  const GetBotMediaPreviews({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot. The bot must have the main Web
  /// App
  final int botUserId;

  static const String constructor = 'getBotMediaPreviews';

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
          other is GetBotMediaPreviews &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
