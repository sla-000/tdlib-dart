// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes opening hours of a business
@immutable
class BusinessOpeningHours extends TdObject {
  const BusinessOpeningHours({
    required this.timeZoneId,
    required this.openingHours,
  });

  /// [timeZoneId] Unique time zone identifier
  final String timeZoneId;

  /// [openingHours] Intervals of the time when the business is open
  final List<BusinessOpeningHoursInterval> openingHours;

  static const String constructor = 'businessOpeningHours';

  static BusinessOpeningHours? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessOpeningHours(
      timeZoneId: (json['time_zone_id'] as String?) ?? '',
      openingHours: List<BusinessOpeningHoursInterval>.from(
          ((json['opening_hours'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BusinessOpeningHoursInterval.fromJson(
                  item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'time_zone_id': timeZoneId,
        'opening_hours': openingHours.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessOpeningHours &&
          const DeepCollectionEquality().equals(other.timeZoneId, timeZoneId) &&
          const DeepCollectionEquality()
              .equals(other.openingHours, openingHours));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(timeZoneId),
        const DeepCollectionEquality().hash(openingHours)
      ]);
}
