import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a channel direct messages chat by username of the
/// channel. Call searchPublicChat with the given chat username to process the
/// link. If the chat is found and is channel, open the direct messages chat
/// of the channel
@immutable
class InternalLinkTypeDirectMessagesChat extends InternalLinkType {
  const InternalLinkTypeDirectMessagesChat({
    required this.channelUsername,
  });

  /// [channelUsername] Username of the channel
  final String channelUsername;

  static const String constructor = 'internalLinkTypeDirectMessagesChat';

  static InternalLinkTypeDirectMessagesChat? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeDirectMessagesChat(
      channelUsername: json['channel_username'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'channel_username': channelUsername,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
