// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the view_as_topics setting of a forum chat or Saved Messages
/// Returns [Ok]
@immutable
class ToggleChatViewAsTopics extends TdFunction {
  const ToggleChatViewAsTopics({
    required this.chatId,
    required this.viewAsTopics,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [viewAsTopics] New value of view_as_topics
  final bool viewAsTopics;

  static const String constructor = 'toggleChatViewAsTopics';

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
          other is ToggleChatViewAsTopics &&
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
