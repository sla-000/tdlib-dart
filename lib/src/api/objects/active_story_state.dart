// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes state of active stories posted by a chat
@immutable
abstract class ActiveStoryState extends TdObject {
  const ActiveStoryState();

  static const String constructor = 'activeStoryState';

  /// Inherited by:
  /// [ActiveStoryStateLive]
  /// [ActiveStoryStateRead]
  /// [ActiveStoryStateUnread]
  static ActiveStoryState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ActiveStoryStateLive.constructor:
        return ActiveStoryStateLive.fromJson(json);
      case ActiveStoryStateRead.constructor:
        return ActiveStoryStateRead.fromJson(json);
      case ActiveStoryStateUnread.constructor:
        return ActiveStoryStateUnread.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ActiveStoryState);

  @override
  int get hashCode => runtimeType.hashCode;
}
