import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a forum topic
@immutable
class ForumTopicInfo extends TdObject {
  const ForumTopicInfo({
    required this.chatId,
    required this.forumTopicId,
    required this.name,
    required this.icon,
    required this.creationDate,
    required this.creatorId,
    required this.isGeneral,
    required this.isOutgoing,
    required this.isClosed,
    required this.isHidden,
    required this.isNameImplicit,
  });

  /// [chatId] Identifier of a forum supergroup chat or a chat with a bot to
  /// which the topic belongs
  final int chatId;

  /// [forumTopicId] Forum topic identifier of the topic
  final int forumTopicId;

  /// [name] Name of the topic
  final String name;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;

  /// [creationDate] Point in time (Unix timestamp) when the topic was created
  final int creationDate;

  /// [creatorId] Identifier of the creator of the topic
  final MessageSender creatorId;

  /// [isGeneral] True, if the topic is the General topic
  final bool isGeneral;

  /// [isOutgoing] True, if the topic was created by the current user
  final bool isOutgoing;

  /// [isClosed] True, if the topic is closed. If the topic is closed, then the
  /// user must have can_manage_topics administrator right in the supergroup or
  /// must be the creator of the topic to send messages there
  final bool isClosed;

  /// [isHidden] True, if the topic is hidden above the topic list and closed;
  /// for General topic only
  final bool isHidden;

  /// [isNameImplicit] True, if the name of the topic wasn't added explicitly
  final bool isNameImplicit;

  static const String constructor = 'forumTopicInfo';

  static ForumTopicInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopicInfo(
      chatId: json['chat_id'] as int,
      forumTopicId: json['forum_topic_id'] as int,
      name: json['name'] as String,
      icon: ForumTopicIcon.fromJson(json['icon'] as Map<String, dynamic>?)!,
      creationDate: json['creation_date'] as int,
      creatorId:
          MessageSender.fromJson(json['creator_id'] as Map<String, dynamic>?)!,
      isGeneral: json['is_general'] as bool,
      isOutgoing: json['is_outgoing'] as bool,
      isClosed: json['is_closed'] as bool,
      isHidden: json['is_hidden'] as bool,
      isNameImplicit: json['is_name_implicit'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'name': name,
        'icon': icon.toJson(),
        'creation_date': creationDate,
        'creator_id': creatorId.toJson(),
        'is_general': isGeneral,
        'is_outgoing': isOutgoing,
        'is_closed': isClosed,
        'is_hidden': isHidden,
        'is_name_implicit': isNameImplicit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
