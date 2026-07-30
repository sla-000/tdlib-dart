// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains statistics about number of new members invited by a user
@immutable
class ChatStatisticsInviterInfo extends TdObject {
  const ChatStatisticsInviterInfo({
    required this.userId,
    required this.addedMemberCount,
  });

  /// [userId] User identifier
  final int userId;

  /// [addedMemberCount] Number of new members invited by the user
  final int addedMemberCount;

  static const String constructor = 'chatStatisticsInviterInfo';

  static ChatStatisticsInviterInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsInviterInfo(
      userId: (json['user_id'] as int?) ?? 0,
      addedMemberCount: (json['added_member_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'added_member_count': addedMemberCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatStatisticsInviterInfo &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.addedMemberCount, addedMemberCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(addedMemberCount)
      ]);
}
