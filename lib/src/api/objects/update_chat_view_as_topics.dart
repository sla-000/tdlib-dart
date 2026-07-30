// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat default appearance has changed
@immutable
class UpdateChatViewAsTopics extends Update {
  const UpdateChatViewAsTopics({
    required this.chatId,
    required this.viewAsTopics,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [viewAsTopics] New value of view_as_topics
  final bool viewAsTopics;

  static const String constructor = 'updateChatViewAsTopics';

  static UpdateChatViewAsTopics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatViewAsTopics(
      chatId: (json['chat_id'] as int?) ?? 0,
      viewAsTopics: (json['view_as_topics'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'view_as_topics': viewAsTopics,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatViewAsTopics &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.viewAsTopics, viewAsTopics));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(viewAsTopics)
      ]);
}
