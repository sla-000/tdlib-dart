// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of join of a chat by the current user
@immutable
abstract class ChatJoinResult extends TdObject {
  const ChatJoinResult();

  static const String constructor = 'chatJoinResult';

  /// Inherited by:
  /// [ChatJoinResultDeclined]
  /// [ChatJoinResultGuardBotApprovalRequired]
  /// [ChatJoinResultRequestSent]
  /// [ChatJoinResultSuccess]
  static ChatJoinResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatJoinResultDeclined.constructor:
        return ChatJoinResultDeclined.fromJson(json);
      case ChatJoinResultGuardBotApprovalRequired.constructor:
        return ChatJoinResultGuardBotApprovalRequired.fromJson(json);
      case ChatJoinResultRequestSent.constructor:
        return ChatJoinResultRequestSent.fromJson(json);
      case ChatJoinResultSuccess.constructor:
        return ChatJoinResultSuccess.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ChatJoinResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
