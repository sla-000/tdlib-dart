import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of message sender identifiers, on whose behalf messages
/// can be sent to a live story
/// Returns [ChatMessageSenders]
@immutable
class GetLiveStoryAvailableMessageSenders extends TdFunction {
  const GetLiveStoryAvailableMessageSenders({
    required this.groupCallId,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'getLiveStoryAvailableMessageSenders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
