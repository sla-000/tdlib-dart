// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the sender of a message
@immutable
abstract class MessageSender extends TdObject {
  const MessageSender();

  static const String constructor = 'messageSender';

  /// Inherited by:
  /// [MessageSenderChat]
  /// [MessageSenderUser]
  static MessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSenderChat.constructor:
        return MessageSenderChat.fromJson(json);
      case MessageSenderUser.constructor:
        return MessageSenderUser.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MessageSender);

  @override
  int get hashCode => runtimeType.hashCode;
}
