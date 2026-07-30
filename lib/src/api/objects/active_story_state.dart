import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
