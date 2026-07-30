// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new member joined the chat via an invite link
@immutable
class PushMessageContentChatJoinByLink extends PushMessageContent {
  const PushMessageContentChatJoinByLink();

  static const String constructor = 'pushMessageContentChatJoinByLink';

  static PushMessageContentChatJoinByLink? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByLink();
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
          other is PushMessageContentChatJoinByLink);

  @override
  int get hashCode => runtimeType.hashCode;
}
