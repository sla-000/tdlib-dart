// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of chat events
@immutable
class ChatEvents extends TdObject {
  const ChatEvents({
    required this.events,
  });

  /// [events] List of events
  final List<ChatEvent> events;

  static const String constructor = 'chatEvents';

  static ChatEvents? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvents(
      events: List<ChatEvent>.from(
          ((json['events'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatEvent.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'events': events.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEvents &&
          const DeepCollectionEquality().equals(other.events, events));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(events)]);
}
