// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat was boosted by the sender of the message
@immutable
class MessageChatBoost extends MessageContent {
  const MessageChatBoost({
    required this.boostCount,
  });

  /// [boostCount] Number of times the chat was boosted
  final int boostCount;

  static const String constructor = 'messageChatBoost';

  static MessageChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatBoost(
      boostCount: (json['boost_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boost_count': boostCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatBoost &&
          const DeepCollectionEquality().equals(other.boostCount, boostCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(boostCount)]);
}
