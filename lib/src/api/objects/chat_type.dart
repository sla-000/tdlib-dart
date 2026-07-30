// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the type of chat
@immutable
abstract class ChatType extends TdObject {
  const ChatType();

  static const String constructor = 'chatType';

  /// Inherited by:
  /// [ChatTypeBasicGroup]
  /// [ChatTypePrivate]
  /// [ChatTypeSecret]
  /// [ChatTypeSupergroup]
  static ChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatTypeBasicGroup.constructor:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypePrivate.constructor:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeSecret.constructor:
        return ChatTypeSecret.fromJson(json);
      case ChatTypeSupergroup.constructor:
        return ChatTypeSupergroup.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ChatType);

  @override
  int get hashCode => runtimeType.hashCode;
}
