// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat member was deleted
@immutable
class PushMessageContentChatDeleteMember extends PushMessageContent {
  const PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });

  /// [memberName] Name of the deleted member
  final String memberName;

  /// [isCurrentUser] True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// [isLeft] True, if the user has left the group themselves
  final bool isLeft;

  static const String constructor = 'pushMessageContentChatDeleteMember';

  static PushMessageContentChatDeleteMember? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatDeleteMember(
      memberName: json['member_name'] as String,
      isCurrentUser: json['is_current_user'] as bool,
      isLeft: json['is_left'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_name': memberName,
        'is_current_user': isCurrentUser,
        'is_left': isLeft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentChatDeleteMember &&
          const DeepCollectionEquality().equals(other.memberName, memberName) &&
          const DeepCollectionEquality()
              .equals(other.isCurrentUser, isCurrentUser) &&
          const DeepCollectionEquality().equals(other.isLeft, isLeft));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(memberName),
        const DeepCollectionEquality().hash(isCurrentUser),
        const DeepCollectionEquality().hash(isLeft)
      ]);
}
