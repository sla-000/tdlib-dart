// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents result of starting a live story
@immutable
abstract class StartLiveStoryResult extends TdObject {
  const StartLiveStoryResult();

  static const String constructor = 'startLiveStoryResult';

  /// Inherited by:
  /// [StartLiveStoryResultFail]
  /// [StartLiveStoryResultOk]
  static StartLiveStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StartLiveStoryResultFail.constructor:
        return StartLiveStoryResultFail.fromJson(json);
      case StartLiveStoryResultOk.constructor:
        return StartLiveStoryResultOk.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StartLiveStoryResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
