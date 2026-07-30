// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether joining is mandatory to send messages to a discussion
/// supergroup; requires can_restrict_members administrator right
/// Returns [Ok]
@immutable
class ToggleSupergroupJoinToSendMessages extends TdFunction {
  const ToggleSupergroupJoinToSendMessages({
    required this.supergroupId,
    required this.joinToSendMessages,
  });

  /// [supergroupId] Identifier of the supergroup that isn't a broadcast group
  final int supergroupId;

  /// [joinToSendMessages] New value of join_to_send_messages
  final bool joinToSendMessages;

  static const String constructor = 'toggleSupergroupJoinToSendMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'join_to_send_messages': joinToSendMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSupergroupJoinToSendMessages &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality()
              .equals(other.joinToSendMessages, joinToSendMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(joinToSendMessages)
      ]);
}
