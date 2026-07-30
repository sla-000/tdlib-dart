// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// New chat members were added
@immutable
class MessageChatAddMembers extends MessageContent {
  const MessageChatAddMembers({
    required this.memberUserIds,
  });

  /// [memberUserIds] User identifiers of the new members
  final List<int> memberUserIds;

  static const String constructor = 'messageChatAddMembers';

  static MessageChatAddMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatAddMembers(
      memberUserIds: List<int>.from(
          ((json['member_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatAddMembers &&
          const DeepCollectionEquality()
              .equals(other.memberUserIds, memberUserIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(memberUserIds)]);
}
