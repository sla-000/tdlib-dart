// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains full information about a community
@immutable
class CommunityFullInfo extends TdObject {
  const CommunityFullInfo({
    required this.photo,
    required this.chats,
    required this.administratorCount,
    required this.bannedCount,
    required this.addChatRequestCount,
  });

  /// [photo] Photo of the community
  final ChatPhoto photo;

  /// [chats] Chats belonging to the community
  final List<CommunityChat> chats;

  /// [administratorCount] Number of privileged users in the community; 0 if the
  /// current user isn't an administrator of the community
  final int administratorCount;

  /// [bannedCount] Number of users banned from the community; 0 if the current
  /// user isn't an administrator of the community
  final int bannedCount;

  /// [addChatRequestCount] Number of pending requests for addition of chats to
  /// the community; 0 if the current user isn't an administrator of the
  /// community
  final int addChatRequestCount;

  static const String constructor = 'communityFullInfo';

  static CommunityFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityFullInfo(
      photo: ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>?)!,
      chats: List<CommunityChat>.from(((json['chats'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => CommunityChat.fromJson(item as Map<String, dynamic>?))
          .toList()),
      administratorCount: (json['administrator_count'] as int?) ?? 0,
      bannedCount: (json['banned_count'] as int?) ?? 0,
      addChatRequestCount: (json['add_chat_request_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'chats': chats.map((item) => item.toJson()).toList(),
        'administrator_count': administratorCount,
        'banned_count': bannedCount,
        'add_chat_request_count': addChatRequestCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityFullInfo &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.chats, chats) &&
          const DeepCollectionEquality()
              .equals(other.administratorCount, administratorCount) &&
          const DeepCollectionEquality()
              .equals(other.bannedCount, bannedCount) &&
          const DeepCollectionEquality()
              .equals(other.addChatRequestCount, addChatRequestCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(chats),
        const DeepCollectionEquality().hash(administratorCount),
        const DeepCollectionEquality().hash(bannedCount),
        const DeepCollectionEquality().hash(addChatRequestCount)
      ]);
}
