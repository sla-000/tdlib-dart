// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ActiveStoryStateRead);

  @override
  int get hashCode => runtimeType.hashCode;
}
