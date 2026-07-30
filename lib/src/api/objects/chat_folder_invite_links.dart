// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of chat folder invite links
@immutable
class ChatFolderInviteLinks extends TdObject {
  const ChatFolderInviteLinks({
    required this.inviteLinks,
  });

  /// [inviteLinks] List of the invite links
  final List<ChatFolderInviteLink> inviteLinks;

  static const String constructor = 'chatFolderInviteLinks';

  static ChatFolderInviteLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInviteLinks(
      inviteLinks: List<ChatFolderInviteLink>.from(
          ((json['invite_links'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  ChatFolderInviteLink.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_links': inviteLinks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatFolderInviteLinks &&
          const DeepCollectionEquality()
              .equals(other.inviteLinks, inviteLinks));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(inviteLinks)]);
}
