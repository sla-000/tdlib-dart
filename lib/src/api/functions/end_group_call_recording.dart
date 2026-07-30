// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Ends recording of an active group call; for video chats only. Requires
/// groupCall.can_be_managed right
/// Returns [Ok]
@immutable
class EndGroupCallRecording extends TdFunction {
  const EndGroupCallRecording({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'endGroupCallRecording';

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
          other is EndGroupCallRecording &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(groupCallId)]);
}
