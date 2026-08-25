// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message draft generation was stopped by the user
@immutable
class UpdateStopMessageDraft extends Update {
  const UpdateStopMessageDraft({
    required this.chatId,
    required this.forumTopicId,
    required this.draftId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] The forum topic identifier of the message draft
  final int forumTopicId;

  /// [draftId] Identifier of the message draft within the message thread
  final int draftId;

  static const String constructor = 'updateStopMessageDraft';

  static UpdateStopMessageDraft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStopMessageDraft(
      chatId: (json['chat_id'] as int?) ?? 0,
      forumTopicId: (json['forum_topic_id'] as int?) ?? 0,
      draftId: (json['draft_id'] is int
              ? json['draft_id'] as int
              : int.tryParse(json['draft_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'draft_id': draftId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateStopMessageDraft &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality().equals(other.draftId, draftId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(draftId)
      ]);
}
