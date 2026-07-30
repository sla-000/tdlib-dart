import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forum topic has been created
@immutable
class MessageForumTopicCreated extends MessageContent {
  const MessageForumTopicCreated({
    required this.name,
    required this.isNameImplicit,
    required this.icon,
  });

  /// [name] Name of the topic
  final String name;

  /// [isNameImplicit] True, if the name of the topic wasn't added explicitly
  final bool isNameImplicit;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;

  static const String constructor = 'messageForumTopicCreated';

  static MessageForumTopicCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicCreated(
      name: json['name'] as String,
      isNameImplicit: json['is_name_implicit'] as bool,
      icon: ForumTopicIcon.fromJson(json['icon'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'is_name_implicit': isNameImplicit,
        'icon': icon.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
