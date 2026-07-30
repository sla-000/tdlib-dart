// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the sending state of the message
@immutable
abstract class MessageSendingState extends TdObject {
  const MessageSendingState();

  static const String constructor = 'messageSendingState';

  /// Inherited by:
  /// [MessageSendingStateFailed]
  /// [MessageSendingStatePending]
  static MessageSendingState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSendingStateFailed.constructor:
        return MessageSendingStateFailed.fromJson(json);
      case MessageSendingStatePending.constructor:
        return MessageSendingStatePending.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MessageSendingState);

  @override
  int get hashCode => runtimeType.hashCode;
}
