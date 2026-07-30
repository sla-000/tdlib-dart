// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Starts a scheduled video chat
/// Returns [Ok]
@immutable
class StartScheduledVideoChat extends TdFunction {
  const StartScheduledVideoChat({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier of the video chat
  final int groupCallId;

  static const String constructor = 'startScheduledVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StartScheduledVideoChat &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(groupCallId)]);
}
