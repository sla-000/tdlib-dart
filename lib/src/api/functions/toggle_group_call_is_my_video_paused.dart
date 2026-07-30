// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether current user's video is paused
/// Returns [Ok]
@immutable
class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  const ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isMyVideoPaused] Pass true if the current user's video is paused
  final bool isMyVideoPaused;

  static const String constructor = 'toggleGroupCallIsMyVideoPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'is_my_video_paused': isMyVideoPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleGroupCallIsMyVideoPaused &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.isMyVideoPaused, isMyVideoPaused));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(isMyVideoPaused)
      ]);
}
