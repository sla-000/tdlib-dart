// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageForumTopicCreated &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.isNameImplicit, isNameImplicit) &&
          const DeepCollectionEquality().equals(other.icon, icon));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(isNameImplicit),
        const DeepCollectionEquality().hash(icon)
      ]);
}
