// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An approval from a guard bot through a Web App is required to join the
/// chat
@immutable
class ChatJoinResultGuardBotApprovalRequired extends ChatJoinResult {
  const ChatJoinResultGuardBotApprovalRequired({
    required this.botUserId,
    required this.queryId,
  });

  /// [botUserId] Identifier of the guard bot
  final int botUserId;

  /// [queryId] Unique identifier of the join request, which will be used in
  /// getGuardBotWebAppUrl and updateChatJoinResult
  final int queryId;

  static const String constructor = 'chatJoinResultGuardBotApprovalRequired';

  static ChatJoinResultGuardBotApprovalRequired? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinResultGuardBotApprovalRequired(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      queryId: (json['query_id'] is int
              ? json['query_id'] as int
              : int.tryParse(json['query_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'query_id': queryId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatJoinResultGuardBotApprovalRequired &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.queryId, queryId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(queryId)
      ]);
}
