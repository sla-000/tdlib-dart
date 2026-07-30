// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The live story failed to post with an error to be handled
@immutable
class StartLiveStoryResultFail extends StartLiveStoryResult {
  const StartLiveStoryResultFail({
    required this.errorType,
  });

  /// [errorType] Type of the error; other error types may be returned as
  /// regular errors
  final CanPostStoryResult errorType;

  static const String constructor = 'startLiveStoryResultFail';

  static StartLiveStoryResultFail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StartLiveStoryResultFail(
      errorType: CanPostStoryResult.fromJson(
          json['error_type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error_type': errorType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StartLiveStoryResultFail &&
          const DeepCollectionEquality().equals(other.errorType, errorType));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(errorType)]);
}
