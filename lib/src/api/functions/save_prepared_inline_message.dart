// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Saves an inline message to be sent by the given user; for bots only
/// Returns [PreparedInlineMessageId]
@immutable
class SavePreparedInlineMessage extends TdFunction {
  const SavePreparedInlineMessage({
    required this.userId,
    required this.result,
    required this.chatTypes,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [result] The description of the message
  final InputInlineQueryResult result;

  /// [chatTypes] Types of the chats to which the message can be sent
  final TargetChatTypes chatTypes;

  static const String constructor = 'savePreparedInlineMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'result': result.toJson(),
        'chat_types': chatTypes.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SavePreparedInlineMessage &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.result, result) &&
          const DeepCollectionEquality().equals(other.chatTypes, chatTypes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(result),
        const DeepCollectionEquality().hash(chatTypes)
      ]);
}
