// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The speech was distorted
@immutable
class CallProblemDistortedSpeech extends CallProblem {
  const CallProblemDistortedSpeech();

  static const String constructor = 'callProblemDistortedSpeech';

  static CallProblemDistortedSpeech? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedSpeech();
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
      (other.runtimeType == runtimeType && other is CallProblemDistortedSpeech);

  @override
  int get hashCode => runtimeType.hashCode;
}
