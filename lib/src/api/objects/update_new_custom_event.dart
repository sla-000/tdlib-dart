// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming event; for bots only
@immutable
class UpdateNewCustomEvent extends Update {
  const UpdateNewCustomEvent({
    required this.event,
  });

  /// [event] A JSON-serialized event
  final String event;

  static const String constructor = 'updateNewCustomEvent';

  static UpdateNewCustomEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomEvent(
      event: (json['event'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'event': event,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewCustomEvent &&
          const DeepCollectionEquality().equals(other.event, event));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(event)]);
}
