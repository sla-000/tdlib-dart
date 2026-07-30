// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleGroupCallAreMessagesAllowed &&
          const DeepCollectionEquality()
              .equals(other.groupCallId, groupCallId) &&
          const DeepCollectionEquality()
              .equals(other.areMessagesAllowed, areMessagesAllowed));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(groupCallId),
        const DeepCollectionEquality().hash(areMessagesAllowed)
      ]);
}
