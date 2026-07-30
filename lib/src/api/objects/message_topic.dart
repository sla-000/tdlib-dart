// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a topic of messages in a chat
@immutable
abstract class MessageTopic extends TdObject {
  const MessageTopic();

  static const String constructor = 'messageTopic';

  /// Inherited by:
  /// [MessageTopicDirectMessages]
  /// [MessageTopicForum]
  /// [MessageTopicSavedMessages]
  /// [MessageTopicThread]
  static MessageTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageTopicDirectMessages.constructor:
        return MessageTopicDirectMessages.fromJson(json);
      case MessageTopicForum.constructor:
        return MessageTopicForum.fromJson(json);
      case MessageTopicSavedMessages.constructor:
        return MessageTopicSavedMessages.fromJson(json);
      case MessageTopicThread.constructor:
        return MessageTopicThread.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MessageTopic);

  @override
  int get hashCode => runtimeType.hashCode;
}
