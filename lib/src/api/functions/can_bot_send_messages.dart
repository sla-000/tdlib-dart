// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether the specified bot can send messages to the user. Returns a
/// 404 error if can't and the access can be granted by call to
/// allowBotToSendMessages
/// Returns [Ok]
@immutable
class CanBotSendMessages extends TdFunction {
  const CanBotSendMessages({
    required this.botUserId,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  static const String constructor = 'canBotSendMessages';

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
          other is CanBotSendMessages &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(botUserId)]);
}
