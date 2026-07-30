// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of a chat join request
@immutable
abstract class ChatJoinRequestResult extends TdObject {
  const ChatJoinRequestResult();

  static const String constructor = 'chatJoinRequestResult';

  /// Inherited by:
  /// [ChatJoinRequestResultApproved]
  /// [ChatJoinRequestResultDeclined]
  /// [ChatJoinRequestResultQueued]
  static ChatJoinRequestResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatJoinRequestResultApproved.constructor:
        return ChatJoinRequestResultApproved.fromJson(json);
      case ChatJoinRequestResultDeclined.constructor:
        return ChatJoinRequestResultDeclined.fromJson(json);
      case ChatJoinRequestResultQueued.constructor:
        return ChatJoinRequestResultQueued.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ChatJoinRequestResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
