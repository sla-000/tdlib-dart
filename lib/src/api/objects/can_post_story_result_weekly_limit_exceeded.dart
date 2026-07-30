// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The weekly limit for the number of posted stories exceeded. The user needs
/// to buy Telegram Premium or wait specified time
@immutable
class CanPostStoryResultWeeklyLimitExceeded extends CanPostStoryResult {
  const CanPostStoryResultWeeklyLimitExceeded({
    required this.retryAfter,
  });

  /// [retryAfter] Time left before the user can post the next story, in seconds
  final int retryAfter;

  static const String constructor = 'canPostStoryResultWeeklyLimitExceeded';

  static CanPostStoryResultWeeklyLimitExceeded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultWeeklyLimitExceeded(
      retryAfter: json['retry_after'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'retry_after': retryAfter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CanPostStoryResultWeeklyLimitExceeded &&
          const DeepCollectionEquality().equals(other.retryAfter, retryAfter));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(retryAfter)]);
}
