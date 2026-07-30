// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is from history of a topic in a channel direct messages chat
/// administered by the current user
@immutable
class MessageSourceDirectMessagesChatTopicHistory extends MessageSource {
  const MessageSourceDirectMessagesChatTopicHistory();

  static const String constructor =
      'messageSourceDirectMessagesChatTopicHistory';

  static MessageSourceDirectMessagesChatTopicHistory? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceDirectMessagesChatTopicHistory();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSourceDirectMessagesChatTopicHistory);

  @override
  int get hashCode => runtimeType.hashCode;
}
