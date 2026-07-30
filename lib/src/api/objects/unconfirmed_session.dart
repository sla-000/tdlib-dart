import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an unconfirmed session
@immutable
class UnconfirmedSession extends TdObject {
  const UnconfirmedSession({
    required this.type,
    required this.date,
    required this.deviceModel,
    required this.location,
  });

  /// [type] Session type
  final SessionType type;

  /// [date] Point in time (Unix timestamp) when the user has logged in or the
  /// business bot was connected
  final int date;

  /// [deviceModel] Model of the device that was used for the session creation,
  /// as provided by the application
  final String deviceModel;

  /// [location] A human-readable description of the location from which the
  /// session was created, based on the IP address
  final String location;

  static const String constructor = 'unconfirmedSession';

  static UnconfirmedSession? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UnconfirmedSession(
      type: SessionType.fromJson(json['type'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      deviceModel: json['device_model'] as String,
      location: json['location'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'date': date,
        'device_model': deviceModel,
        'location': location,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
