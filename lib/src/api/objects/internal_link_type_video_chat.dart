// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a video chat. Call searchPublicChat with the given
/// chat username, and then joinVideoChat with the given invite hash to
/// process the link
@immutable
class InternalLinkTypeVideoChat extends InternalLinkType {
  const InternalLinkTypeVideoChat({
    required this.chatUsername,
    required this.inviteHash,
    required this.isLiveStream,
  });

  /// [chatUsername] Username of the chat with the video chat
  final String chatUsername;

  /// [inviteHash] If non-empty, invite hash to be used to join the video chat
  /// without being muted by administrators
  final String inviteHash;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in
  /// a channel or a broadcast group
  final bool isLiveStream;

  static const String constructor = 'internalLinkTypeVideoChat';

  static InternalLinkTypeVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeVideoChat(
      chatUsername: (json['chat_username'] as String?) ?? '',
      inviteHash: (json['invite_hash'] as String?) ?? '',
      isLiveStream: (json['is_live_stream'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_username': chatUsername,
        'invite_hash': inviteHash,
        'is_live_stream': isLiveStream,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeVideoChat &&
          const DeepCollectionEquality()
              .equals(other.chatUsername, chatUsername) &&
          const DeepCollectionEquality().equals(other.inviteHash, inviteHash) &&
          const DeepCollectionEquality()
              .equals(other.isLiveStream, isLiveStream));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatUsername),
        const DeepCollectionEquality().hash(inviteHash),
        const DeepCollectionEquality().hash(isLiveStream)
      ]);
}
