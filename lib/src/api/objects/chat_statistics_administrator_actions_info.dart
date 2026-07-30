// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains statistics about administrator actions done by a user
@immutable
class ChatStatisticsAdministratorActionsInfo extends TdObject {
  const ChatStatisticsAdministratorActionsInfo({
    required this.userId,
    required this.deletedMessageCount,
    required this.bannedUserCount,
    required this.restrictedUserCount,
  });

  /// [userId] Administrator user identifier
  final int userId;

  /// [deletedMessageCount] Number of messages deleted by the administrator
  final int deletedMessageCount;

  /// [bannedUserCount] Number of users banned by the administrator
  final int bannedUserCount;

  /// [restrictedUserCount] Number of users restricted by the administrator
  final int restrictedUserCount;

  static const String constructor = 'chatStatisticsAdministratorActionsInfo';

  static ChatStatisticsAdministratorActionsInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsAdministratorActionsInfo(
      userId: json['user_id'] as int,
      deletedMessageCount: json['deleted_message_count'] as int,
      bannedUserCount: json['banned_user_count'] as int,
      restrictedUserCount: json['restricted_user_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'deleted_message_count': deletedMessageCount,
        'banned_user_count': bannedUserCount,
        'restricted_user_count': restrictedUserCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatStatisticsAdministratorActionsInfo &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.deletedMessageCount, deletedMessageCount) &&
          const DeepCollectionEquality()
              .equals(other.bannedUserCount, bannedUserCount) &&
          const DeepCollectionEquality()
              .equals(other.restrictedUserCount, restrictedUserCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(deletedMessageCount),
        const DeepCollectionEquality().hash(bannedUserCount),
        const DeepCollectionEquality().hash(restrictedUserCount)
      ]);
}
