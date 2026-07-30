// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a folder for user chats
@immutable
class ChatFolder extends TdObject {
  const ChatFolder({
    required this.name,
    this.icon,
    required this.colorId,
    required this.isShareable,
    required this.pinnedChatIds,
    required this.includedChatIds,
    required this.excludedChatIds,
    required this.excludeMuted,
    required this.excludeRead,
    required this.excludeArchived,
    required this.includeContacts,
    required this.includeNonContacts,
    required this.includeBots,
    required this.includeGroups,
    required this.includeChannels,
  });

  /// [name] The name of the folder
  final ChatFolderName name;

  /// [icon] The chosen icon for the chat folder; may be null. If null, use
  /// getChatFolderDefaultIconName to get default icon name for the folder
  final ChatFolderIcon? icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon;
  /// from -1 to 6. If -1, then color is disabled. Can't be changed if folder
  /// tags are disabled or the current user doesn't have Telegram Premium
  /// subscription
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the folder. There
  /// can be up to getOption("chat_folder_chosen_chat_count_max") pinned and
  /// always included non-secret chats and the same number of secret chats, but
  /// the limit can be increased with Telegram Premium
  final List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the
  /// folder. There can be up to getOption("chat_folder_chosen_chat_count_max")
  /// pinned and always included non-secret chats and the same number of secret
  /// chats, but the limit can be increased with Telegram Premium
  final List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the
  /// folder. There can be up to getOption("chat_folder_chosen_chat_count_max")
  /// always excluded non-secret chats and the same number of secret chats, but
  /// the limit can be increased with Telegram Premium
  final List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  final bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  final bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  final bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  final bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  final bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  final bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  final bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  final bool includeChannels;

  static const String constructor = 'chatFolder';

  static ChatFolder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolder(
      name: ChatFolderName.fromJson(json['name'] as Map<String, dynamic>?)!,
      icon: ChatFolderIcon.fromJson(json['icon'] as Map<String, dynamic>?),
      colorId: (json['color_id'] as int?) ?? 0,
      isShareable: (json['is_shareable'] as bool?) ?? false,
      pinnedChatIds: List<int>.from(
          ((json['pinned_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      includedChatIds: List<int>.from(
          ((json['included_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      excludedChatIds: List<int>.from(
          ((json['excluded_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      excludeMuted: (json['exclude_muted'] as bool?) ?? false,
      excludeRead: (json['exclude_read'] as bool?) ?? false,
      excludeArchived: (json['exclude_archived'] as bool?) ?? false,
      includeContacts: (json['include_contacts'] as bool?) ?? false,
      includeNonContacts: (json['include_non_contacts'] as bool?) ?? false,
      includeBots: (json['include_bots'] as bool?) ?? false,
      includeGroups: (json['include_groups'] as bool?) ?? false,
      includeChannels: (json['include_channels'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name.toJson(),
        'icon': icon?.toJson(),
        'color_id': colorId,
        'is_shareable': isShareable,
        'pinned_chat_ids': pinnedChatIds.map((item) => item).toList(),
        'included_chat_ids': includedChatIds.map((item) => item).toList(),
        'excluded_chat_ids': excludedChatIds.map((item) => item).toList(),
        'exclude_muted': excludeMuted,
        'exclude_read': excludeRead,
        'exclude_archived': excludeArchived,
        'include_contacts': includeContacts,
        'include_non_contacts': includeNonContacts,
        'include_bots': includeBots,
        'include_groups': includeGroups,
        'include_channels': includeChannels,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatFolder &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.icon, icon) &&
          const DeepCollectionEquality().equals(other.colorId, colorId) &&
          const DeepCollectionEquality()
              .equals(other.isShareable, isShareable) &&
          const DeepCollectionEquality()
              .equals(other.pinnedChatIds, pinnedChatIds) &&
          const DeepCollectionEquality()
              .equals(other.includedChatIds, includedChatIds) &&
          const DeepCollectionEquality()
              .equals(other.excludedChatIds, excludedChatIds) &&
          const DeepCollectionEquality()
              .equals(other.excludeMuted, excludeMuted) &&
          const DeepCollectionEquality()
              .equals(other.excludeRead, excludeRead) &&
          const DeepCollectionEquality()
              .equals(other.excludeArchived, excludeArchived) &&
          const DeepCollectionEquality()
              .equals(other.includeContacts, includeContacts) &&
          const DeepCollectionEquality()
              .equals(other.includeNonContacts, includeNonContacts) &&
          const DeepCollectionEquality()
              .equals(other.includeBots, includeBots) &&
          const DeepCollectionEquality()
              .equals(other.includeGroups, includeGroups) &&
          const DeepCollectionEquality()
              .equals(other.includeChannels, includeChannels));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(icon),
        const DeepCollectionEquality().hash(colorId),
        const DeepCollectionEquality().hash(isShareable),
        const DeepCollectionEquality().hash(pinnedChatIds),
        const DeepCollectionEquality().hash(includedChatIds),
        const DeepCollectionEquality().hash(excludedChatIds),
        const DeepCollectionEquality().hash(excludeMuted),
        const DeepCollectionEquality().hash(excludeRead),
        const DeepCollectionEquality().hash(excludeArchived),
        const DeepCollectionEquality().hash(includeContacts),
        const DeepCollectionEquality().hash(includeNonContacts),
        const DeepCollectionEquality().hash(includeBots),
        const DeepCollectionEquality().hash(includeGroups),
        const DeepCollectionEquality().hash(includeChannels)
      ]);
}
