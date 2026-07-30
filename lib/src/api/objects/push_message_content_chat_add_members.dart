// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// New chat members were invited to a group
@immutable
class PushMessageContentChatAddMembers extends PushMessageContent {
  const PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });

  /// [memberName] Name of the added member
  final String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  final bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themselves
  final bool isReturned;

  static const String constructor = 'pushMessageContentChatAddMembers';

  static PushMessageContentChatAddMembers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatAddMembers(
      memberName: (json['member_name'] as String?) ?? '',
      isCurrentUser: (json['is_current_user'] as bool?) ?? false,
      isReturned: (json['is_returned'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_name': memberName,
        'is_current_user': isCurrentUser,
        'is_returned': isReturned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentChatAddMembers &&
          const DeepCollectionEquality().equals(other.memberName, memberName) &&
          const DeepCollectionEquality()
              .equals(other.isCurrentUser, isCurrentUser) &&
          const DeepCollectionEquality().equals(other.isReturned, isReturned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(memberName),
        const DeepCollectionEquality().hash(isCurrentUser),
        const DeepCollectionEquality().hash(isReturned)
      ]);
}
