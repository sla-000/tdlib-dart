import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
