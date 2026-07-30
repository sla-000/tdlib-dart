// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message is being sent now, but has not yet been delivered to the
/// server
@immutable
class MessageSendingStatePending extends MessageSendingState {
  const MessageSendingStatePending({
    required this.sendingId,
  });

  /// [sendingId] Non-persistent message sending identifier, specified by the
  /// application
  final int sendingId;

  static const String constructor = 'messageSendingStatePending';

  static MessageSendingStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStatePending(
      sendingId: (json['sending_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sending_id': sendingId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSendingStatePending &&
          const DeepCollectionEquality().equals(other.sendingId, sendingId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sendingId)]);
}
