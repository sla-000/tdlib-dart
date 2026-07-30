// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An invitation of participants to a video chat or live stream
@immutable
class PushMessageContentInviteVideoChatParticipants extends PushMessageContent {
  const PushMessageContentInviteVideoChatParticipants({
    required this.isCurrentUser,
  });

  /// [isCurrentUser] True, if the current user was invited to the video chat or
  /// the live stream
  final bool isCurrentUser;

  static const String constructor =
      'pushMessageContentInviteVideoChatParticipants';

  static PushMessageContentInviteVideoChatParticipants? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInviteVideoChatParticipants(
      isCurrentUser: json['is_current_user'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_current_user': isCurrentUser,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentInviteVideoChatParticipants &&
          const DeepCollectionEquality()
              .equals(other.isCurrentUser, isCurrentUser));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isCurrentUser)]);
}
