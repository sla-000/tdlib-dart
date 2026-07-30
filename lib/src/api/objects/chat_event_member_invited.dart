// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new chat member was invited
@immutable
class ChatEventMemberInvited extends ChatEventAction {
  const ChatEventMemberInvited({
    required this.userId,
    required this.status,
  });

  /// [userId] New member user identifier
  final int userId;

  /// [status] New member status
  final ChatMemberStatus status;

  static const String constructor = 'chatEventMemberInvited';

  static ChatEventMemberInvited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberInvited(
      userId: (json['user_id'] as int?) ?? 0,
      status:
          ChatMemberStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventMemberInvited &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.status, status));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(status)
      ]);
}
