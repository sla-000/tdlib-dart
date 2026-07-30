// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The video was pixelated
@immutable
class CallProblemPixelatedVideo extends CallProblem {
  const CallProblemPixelatedVideo();

  static const String constructor = 'callProblemPixelatedVideo';

  static CallProblemPixelatedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemPixelatedVideo();
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
      (other.runtimeType == runtimeType && other is CallProblemPixelatedVideo);

  @override
  int get hashCode => runtimeType.hashCode;
}
