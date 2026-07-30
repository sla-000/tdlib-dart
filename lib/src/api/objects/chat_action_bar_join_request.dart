// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat is a private chat with an administrator of a chat to which the
/// user sent join request
@immutable
class ChatActionBarJoinRequest extends ChatActionBar {
  const ChatActionBarJoinRequest({
    required this.title,
    required this.isChannel,
    required this.requestDate,
  });

  /// [title] Title of the chat to which the join request was sent
  final String title;

  /// [isChannel] True, if the join request was sent to a channel chat
  final bool isChannel;

  /// [requestDate] Point in time (Unix timestamp) when the join request was
  /// sent
  final int requestDate;

  static const String constructor = 'chatActionBarJoinRequest';

  static ChatActionBarJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarJoinRequest(
      title: json['title'] as String,
      isChannel: json['is_channel'] as bool,
      requestDate: json['request_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'is_channel': isChannel,
        'request_date': requestDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatActionBarJoinRequest &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.isChannel, isChannel) &&
          const DeepCollectionEquality()
              .equals(other.requestDate, requestDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(isChannel),
        const DeepCollectionEquality().hash(requestDate)
      ]);
}
