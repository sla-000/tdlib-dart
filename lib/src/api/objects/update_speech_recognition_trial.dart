// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The parameters of speech recognition without Telegram Premium subscription
/// have changed
@immutable
class UpdateSpeechRecognitionTrial extends Update {
  const UpdateSpeechRecognitionTrial({
    required this.maxMediaDuration,
    required this.weeklyCount,
    required this.leftCount,
    required this.nextResetDate,
  });

  /// [maxMediaDuration] The maximum allowed duration of media for speech
  /// recognition without Telegram Premium subscription, in seconds
  final int maxMediaDuration;

  /// [weeklyCount] The total number of allowed speech recognitions per week; 0
  /// if none
  final int weeklyCount;

  /// [leftCount] Number of left speech recognition attempts this week
  final int leftCount;

  /// [nextResetDate] Point in time (Unix timestamp) when the weekly number of
  /// tries will reset; 0 if unknown
  final int nextResetDate;

  static const String constructor = 'updateSpeechRecognitionTrial';

  static UpdateSpeechRecognitionTrial? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSpeechRecognitionTrial(
      maxMediaDuration: json['max_media_duration'] as int,
      weeklyCount: json['weekly_count'] as int,
      leftCount: json['left_count'] as int,
      nextResetDate: json['next_reset_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'max_media_duration': maxMediaDuration,
        'weekly_count': weeklyCount,
        'left_count': leftCount,
        'next_reset_date': nextResetDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateSpeechRecognitionTrial &&
          const DeepCollectionEquality()
              .equals(other.maxMediaDuration, maxMediaDuration) &&
          const DeepCollectionEquality()
              .equals(other.weeklyCount, weeklyCount) &&
          const DeepCollectionEquality().equals(other.leftCount, leftCount) &&
          const DeepCollectionEquality()
              .equals(other.nextResetDate, nextResetDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(maxMediaDuration),
        const DeepCollectionEquality().hash(weeklyCount),
        const DeepCollectionEquality().hash(leftCount),
        const DeepCollectionEquality().hash(nextResetDate)
      ]);
}
