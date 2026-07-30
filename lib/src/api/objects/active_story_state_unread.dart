// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat has some unread active stories
@immutable
class ActiveStoryStateUnread extends ActiveStoryState {
  const ActiveStoryStateUnread();

  static const String constructor = 'activeStoryStateUnread';

  static ActiveStoryStateUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ActiveStoryStateUnread();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ActiveStoryStateUnread);

  @override
  int get hashCode => runtimeType.hashCode;
}
