// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Pauses or unpauses screen sharing in a joined group call; not supported in
/// live stories
/// Returns [Ok]
@immutable
class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  const ToggleGroupCallScreenSharingIsPaused({
    required this.groupCallId,
    required this.isPaused,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isPaused] Pass true to pause screen sharing; pass false to unpause it
  final bool isPaused;

  static const String constructor = 'toggleGroupCallScreenSharingIsPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleGroupCallScreenSharingIsPaused &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality().equals(other.isPaused, isPaused));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(isPaused)
      ]);
}
