// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a notification sound in MP3 format
@immutable
class NotificationSound extends TdObject {
  const NotificationSound({
    required this.id,
    required this.duration,
    required this.date,
    required this.title,
    required this.data,
    required this.sound,
  });

  /// [id] Unique identifier of the notification sound
  final int id;

  /// [duration] Duration of the sound, in seconds
  final int duration;

  /// [date] Point in time (Unix timestamp) when the sound was created
  final int date;

  /// [title] Title of the notification sound
  final String title;

  /// [data] Arbitrary data, defined while the sound was uploaded
  final String data;

  /// [sound] File containing the sound
  final File sound;

  static const String constructor = 'notificationSound';

  static NotificationSound? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationSound(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      duration: (json['duration'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
      data: (json['data'] as String?) ?? '',
      sound: File.fromJson(json['sound'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'duration': duration,
        'date': date,
        'title': title,
        'data': data,
        'sound': sound.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NotificationSound &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.data, data) &&
          const DeepCollectionEquality().equals(other.sound, sound));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(data),
        const DeepCollectionEquality().hash(sound)
      ]);
}
