// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The limit for the number of active stories exceeded. The user can buy
/// Telegram Premium, delete an active story, or wait for the oldest story to
/// expire
@immutable
class CanPostStoryResultActiveStoryLimitExceeded extends CanPostStoryResult {
  const CanPostStoryResultActiveStoryLimitExceeded();

  static const String constructor =
      'canPostStoryResultActiveStoryLimitExceeded';

  static CanPostStoryResultActiveStoryLimitExceeded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanPostStoryResultActiveStoryLimitExceeded();
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
      (other.runtimeType == runtimeType &&
          other is CanPostStoryResultActiveStoryLimitExceeded);

  @override
  int get hashCode => runtimeType.hashCode;
}
