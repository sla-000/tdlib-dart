// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A General forum topic has been hidden or unhidden
@immutable
class MessageForumTopicIsHiddenToggled extends MessageContent {
  const MessageForumTopicIsHiddenToggled({
    required this.isHidden,
  });

  /// [isHidden] True, if the topic was hidden; otherwise, the topic was
  /// unhidden
  final bool isHidden;

  static const String constructor = 'messageForumTopicIsHiddenToggled';

  static MessageForumTopicIsHiddenToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicIsHiddenToggled(
      isHidden: json['is_hidden'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_hidden': isHidden,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageForumTopicIsHiddenToggled &&
          const DeepCollectionEquality().equals(other.isHidden, isHidden));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isHidden)]);
}
