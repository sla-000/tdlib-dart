// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a chat administrator
@immutable
class ChatAdministrator extends TdObject {
  const ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
    required this.canBeEdited,
  });

  /// [userId] User identifier of the administrator
  final int userId;

  /// [customTitle] Custom title of the administrator
  final String customTitle;

  /// [isOwner] True, if the user is the owner of the chat
  final bool isOwner;

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the administrator
  final bool canBeEdited;

  static const String constructor = 'chatAdministrator';

  static ChatAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrator(
      userId: json['user_id'] as int,
      customTitle: json['custom_title'] as String,
      isOwner: json['is_owner'] as bool,
      canBeEdited: json['can_be_edited'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'custom_title': customTitle,
        'is_owner': isOwner,
        'can_be_edited': canBeEdited,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatAdministrator &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.customTitle, customTitle) &&
          const DeepCollectionEquality().equals(other.isOwner, isOwner) &&
          const DeepCollectionEquality()
              .equals(other.canBeEdited, canBeEdited));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(customTitle),
        const DeepCollectionEquality().hash(isOwner),
        const DeepCollectionEquality().hash(canBeEdited)
      ]);
}
