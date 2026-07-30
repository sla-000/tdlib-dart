// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains basic information about a chat folder
@immutable
class ChatFolderInfo extends TdObject {
  const ChatFolderInfo({
    required this.id,
    required this.name,
    required this.icon,
    required this.colorId,
    required this.isShareable,
    required this.hasMyInviteLinks,
  });

  /// [id] Unique chat folder identifier
  final int id;

  /// [name] The name of the folder
  final ChatFolderName name;

  /// [icon] The chosen or default icon for the chat folder
  final ChatFolderIcon icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon;
  /// from -1 to 6. If -1, then color is disabled
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [hasMyInviteLinks] True, if the chat folder has invite links created by
  /// the current user
  final bool hasMyInviteLinks;

  static const String constructor = 'chatFolderInfo';

  static ChatFolderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInfo(
      id: (json['id'] as int?) ?? 0,
      name: ChatFolderName.fromJson(json['name'] as Map<String, dynamic>?)!,
      icon: ChatFolderIcon.fromJson(json['icon'] as Map<String, dynamic>?)!,
      colorId: (json['color_id'] as int?) ?? 0,
      isShareable: (json['is_shareable'] as bool?) ?? false,
      hasMyInviteLinks: (json['has_my_invite_links'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name.toJson(),
        'icon': icon.toJson(),
        'color_id': colorId,
        'is_shareable': isShareable,
        'has_my_invite_links': hasMyInviteLinks,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatFolderInfo &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.icon, icon) &&
          const DeepCollectionEquality().equals(other.colorId, colorId) &&
          const DeepCollectionEquality()
              .equals(other.isShareable, isShareable) &&
          const DeepCollectionEquality()
              .equals(other.hasMyInviteLinks, hasMyInviteLinks));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(icon),
        const DeepCollectionEquality().hash(colorId),
        const DeepCollectionEquality().hash(isShareable),
        const DeepCollectionEquality().hash(hasMyInviteLinks)
      ]);
}
