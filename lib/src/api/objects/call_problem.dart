// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the exact type of problem with a call
@immutable
abstract class CallProblem extends TdObject {
  const CallProblem();

  static const String constructor = 'callProblem';

  /// Inherited by:
  /// [CallProblemDistortedSpeech]
  /// [CallProblemDistortedVideo]
  /// [CallProblemDropped]
  /// [CallProblemEcho]
  /// [CallProblemInterruptions]
  /// [CallProblemNoise]
  /// [CallProblemPixelatedVideo]
  /// [CallProblemSilentLocal]
  /// [CallProblemSilentRemote]
  static CallProblem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallProblemDistortedSpeech.constructor:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemDistortedVideo.constructor:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemDropped.constructor:
        return CallProblemDropped.fromJson(json);
      case CallProblemEcho.constructor:
        return CallProblemEcho.fromJson(json);
      case CallProblemInterruptions.constructor:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemNoise.constructor:
        return CallProblemNoise.fromJson(json);
      case CallProblemPixelatedVideo.constructor:
        return CallProblemPixelatedVideo.fromJson(json);
      case CallProblemSilentLocal.constructor:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.constructor:
        return CallProblemSilentRemote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is CallProblem);

  @override
  int get hashCode => runtimeType.hashCode;
}
