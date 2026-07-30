// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes default participant identifier, on whose behalf a video chat in
/// the chat will be joined
/// Returns [Ok]
@immutable
class SetVideoChatDefaultParticipant extends TdFunction {
  const SetVideoChatDefaultParticipant({
    required this.chatId,
    required this.defaultParticipantId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultParticipantId] Default group call participant identifier to join
  /// the video chats in the chat
  final MessageSender defaultParticipantId;

  static const String constructor = 'setVideoChatDefaultParticipant';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'default_participant_id': defaultParticipantId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetVideoChatDefaultParticipant &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.defaultParticipantId, defaultParticipantId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(defaultParticipantId)
      ]);
}
