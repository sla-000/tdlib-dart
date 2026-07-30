// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A forum topic has been closed or opened
@immutable
class MessageForumTopicIsClosedToggled extends MessageContent {
  const MessageForumTopicIsClosedToggled({
    required this.isClosed,
  });

  /// [isClosed] True, if the topic was closed; otherwise, the topic was
  /// reopened
  final bool isClosed;

  static const String constructor = 'messageForumTopicIsClosedToggled';

  static MessageForumTopicIsClosedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicIsClosedToggled(
      isClosed: json['is_closed'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_closed': isClosed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageForumTopicIsClosedToggled &&
          const DeepCollectionEquality().equals(other.isClosed, isClosed));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isClosed)]);
}
