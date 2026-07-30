// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes actions that a user is allowed to take in a community
@immutable
class CommunityPermissions extends TdObject {
  const CommunityPermissions({
    required this.canEditChatList,
  });

  /// [canEditChatList] True, if the user can change the chats added to the
  /// community
  final bool canEditChatList;

  static const String constructor = 'communityPermissions';

  static CommunityPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityPermissions(
      canEditChatList: (json['can_edit_chat_list'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_edit_chat_list': canEditChatList,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityPermissions &&
          const DeepCollectionEquality()
              .equals(other.canEditChatList, canEditChatList));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(canEditChatList)]);
}
