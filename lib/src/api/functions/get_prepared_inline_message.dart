// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Saves an inline message to be sent by the given user
/// Returns [PreparedInlineMessage]
@immutable
class GetPreparedInlineMessage extends TdFunction {
  const GetPreparedInlineMessage({
    required this.botUserId,
    required this.preparedMessageId,
  });

  /// [botUserId] Identifier of the bot that created the message
  final int botUserId;

  /// [preparedMessageId] Identifier of the prepared message
  final String preparedMessageId;

  static const String constructor = 'getPreparedInlineMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'prepared_message_id': preparedMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPreparedInlineMessage &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality()
              .equals(other.preparedMessageId, preparedMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(preparedMessageId)
      ]);
}
