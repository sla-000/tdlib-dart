// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a chat event
@immutable
class ChatEvent extends TdObject {
  const ChatEvent({
    required this.id,
    required this.date,
    required this.memberId,
    required this.action,
  });

  /// [id] Chat event identifier
  final int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  final int date;

  /// [memberId] Identifier of the user or chat who performed the action
  final MessageSender memberId;

  /// [action] The action
  final ChatEventAction action;

  static const String constructor = 'chatEvent';

  static ChatEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvent(
      id: int.tryParse(json['id']) ?? 0,
      date: json['date'] as int,
      memberId:
          MessageSender.fromJson(json['member_id'] as Map<String, dynamic>?)!,
      action:
          ChatEventAction.fromJson(json['action'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'date': date,
        'member_id': memberId.toJson(),
        'action': action.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEvent &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.memberId, memberId) &&
          const DeepCollectionEquality().equals(other.action, action));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(memberId),
        const DeepCollectionEquality().hash(action)
      ]);
}
