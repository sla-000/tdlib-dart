// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of message senders, which can be used to send messages
/// in a chat
@immutable
class ChatMessageSenders extends TdObject {
  const ChatMessageSenders({
    required this.senders,
  });

  /// [senders] List of available message senders
  final List<ChatMessageSender> senders;

  static const String constructor = 'chatMessageSenders';

  static ChatMessageSenders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMessageSenders(
      senders: List<ChatMessageSender>.from(
          ((json['senders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  ChatMessageSender.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'senders': senders.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatMessageSenders &&
          const DeepCollectionEquality().equals(other.senders, senders));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(senders)]);
}
