// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of canSendMessageToUser
@immutable
abstract class CanSendMessageToUserResult extends TdObject {
  const CanSendMessageToUserResult();

  static const String constructor = 'canSendMessageToUserResult';

  /// Inherited by:
  /// [CanSendMessageToUserResultOk]
  /// [CanSendMessageToUserResultUserHasPaidMessages]
  /// [CanSendMessageToUserResultUserIsDeleted]
  /// [CanSendMessageToUserResultUserRestrictsNewChats]
  static CanSendMessageToUserResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanSendMessageToUserResultOk.constructor:
        return CanSendMessageToUserResultOk.fromJson(json);
      case CanSendMessageToUserResultUserHasPaidMessages.constructor:
        return CanSendMessageToUserResultUserHasPaidMessages.fromJson(json);
      case CanSendMessageToUserResultUserIsDeleted.constructor:
        return CanSendMessageToUserResultUserIsDeleted.fromJson(json);
      case CanSendMessageToUserResultUserRestrictsNewChats.constructor:
        return CanSendMessageToUserResultUserRestrictsNewChats.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CanSendMessageToUserResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
