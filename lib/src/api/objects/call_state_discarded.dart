// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The call has ended successfully
@immutable
class CallStateDiscarded extends CallState {
  const CallStateDiscarded({
    required this.reason,
    required this.needRating,
    required this.needDebugInformation,
    required this.needLog,
  });

  /// [reason] The reason why the call has ended
  final CallDiscardReason reason;

  /// [needRating] True, if the call rating must be sent to the server
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information must be sent to
  /// the server
  final bool needDebugInformation;

  /// [needLog] True, if the call log must be sent to the server
  final bool needLog;

  static const String constructor = 'callStateDiscarded';

  static CallStateDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateDiscarded(
      reason:
          CallDiscardReason.fromJson(json['reason'] as Map<String, dynamic>?)!,
      needRating: (json['need_rating'] as bool?) ?? false,
      needDebugInformation: (json['need_debug_information'] as bool?) ?? false,
      needLog: (json['need_log'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason.toJson(),
        'need_rating': needRating,
        'need_debug_information': needDebugInformation,
        'need_log': needLog,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallStateDiscarded &&
          const DeepCollectionEquality().equals(other.reason, reason) &&
          const DeepCollectionEquality().equals(other.needRating, needRating) &&
          const DeepCollectionEquality()
              .equals(other.needDebugInformation, needDebugInformation) &&
          const DeepCollectionEquality().equals(other.needLog, needLog));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(reason),
        const DeepCollectionEquality().hash(needRating),
        const DeepCollectionEquality().hash(needDebugInformation),
        const DeepCollectionEquality().hash(needLog)
      ]);
}
