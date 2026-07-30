import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether participants of a group call can send messages there.
/// Requires groupCall.can_toggle_are_messages_allowed right
/// Returns [Ok]
@immutable
class ToggleGroupCallAreMessagesAllowed extends TdFunction {
  const ToggleGroupCallAreMessagesAllowed({
    required this.groupCallId,
    required this.areMessagesAllowed,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [areMessagesAllowed] New value of the are_messages_allowed setting
  final bool areMessagesAllowed;

  static const String constructor = 'toggleGroupCallAreMessagesAllowed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'are_messages_allowed': areMessagesAllowed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
