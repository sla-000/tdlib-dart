// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The other side kept disappearing
@immutable
class CallProblemInterruptions extends CallProblem {
  const CallProblemInterruptions();

  static const String constructor = 'callProblemInterruptions';

  static CallProblemInterruptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemInterruptions();
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
      (other.runtimeType == runtimeType && other is CallProblemInterruptions);

  @override
  int get hashCode => runtimeType.hashCode;
}
