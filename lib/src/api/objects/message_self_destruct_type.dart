// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes when a message will be self-destructed
@immutable
abstract class MessageSelfDestructType extends TdObject {
  const MessageSelfDestructType();

  static const String constructor = 'messageSelfDestructType';

  /// Inherited by:
  /// [MessageSelfDestructTypeImmediately]
  /// [MessageSelfDestructTypeTimer]
  static MessageSelfDestructType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSelfDestructTypeImmediately.constructor:
        return MessageSelfDestructTypeImmediately.fromJson(json);
      case MessageSelfDestructTypeTimer.constructor:
        return MessageSelfDestructTypeTimer.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MessageSelfDestructType);

  @override
  int get hashCode => runtimeType.hashCode;
}
