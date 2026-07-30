// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Handles a pending join request in a chat
/// Returns [Ok]
@immutable
class ProcessChatJoinRequest extends TdFunction {
  const ProcessChatJoinRequest({
    required this.chatId,
    required this.userId,
    required this.approve,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user who sent the request
  final int userId;

  /// [approve] Pass true to approve the request; pass false to decline it
  final bool approve;

  static const String constructor = 'processChatJoinRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        'approve': approve,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ProcessChatJoinRequest &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.approve, approve));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(approve)
      ]);
}
