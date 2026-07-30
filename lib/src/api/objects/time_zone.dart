// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a time zone
@immutable
class TimeZone extends TdObject {
  const TimeZone({
    required this.id,
    required this.name,
    required this.utcTimeOffset,
  });

  /// [id] Unique time zone identifier
  final String id;

  /// [name] Time zone name
  final String name;

  /// [utcTimeOffset] Current UTC time offset for the time zone
  final int utcTimeOffset;

  static const String constructor = 'timeZone';

  static TimeZone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TimeZone(
      id: (json['id'] as String?) ?? '',
      name: (json['name'] as String?) ?? '',
      utcTimeOffset: (json['utc_time_offset'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'utc_time_offset': utcTimeOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TimeZone &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.utcTimeOffset, utcTimeOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(utcTimeOffset)
      ]);
}
