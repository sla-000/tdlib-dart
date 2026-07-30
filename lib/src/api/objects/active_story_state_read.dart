import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat has active stories, all of which were read
@immutable
class ActiveStoryStateRead extends ActiveStoryState {
  const ActiveStoryStateRead();

  static const String constructor = 'activeStoryStateRead';

  static ActiveStoryStateRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ActiveStoryStateRead();
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
