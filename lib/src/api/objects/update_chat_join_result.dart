// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A join request from the user was completed
@immutable
class UpdateChatJoinResult extends Update {
  const UpdateChatJoinResult({
    required this.queryId,
    required this.chatId,
    required this.result,
  });

  /// [queryId] Identifier of the join request query as received in
  /// chatJoinResultGuardBotApprovalRequired. If the corresponding Web App is
  /// stiil open, then it must be closed
  final int queryId;

  /// [chatId] Identifier of the joined chat, or 0 if the request wasn't
  /// approved
  final int chatId;

  /// [result] Result of the join
  final ChatJoinRequestResult result;

  static const String constructor = 'updateChatJoinResult';

  static UpdateChatJoinResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatJoinResult(
      queryId: int.tryParse(json['query_id']) ?? 0,
      chatId: json['chat_id'] as int,
      result: ChatJoinRequestResult.fromJson(
          json['result'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query_id': queryId.toString(),
        'chat_id': chatId,
        'result': result.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatJoinResult &&
          const DeepCollectionEquality().equals(other.queryId, queryId) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.result, result));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(queryId),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(result)
      ]);
}
