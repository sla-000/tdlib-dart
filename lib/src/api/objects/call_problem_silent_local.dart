// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user couldn't hear the other side
@immutable
class CallProblemSilentLocal extends CallProblem {
  const CallProblemSilentLocal();

  static const String constructor = 'callProblemSilentLocal';

  static CallProblemSilentLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemSilentLocal();
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
      (other.runtimeType == runtimeType && other is CallProblemSilentLocal);

  @override
  int get hashCode => runtimeType.hashCode;
}
