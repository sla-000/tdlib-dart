// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a birthdate of a user
@immutable
class Birthdate extends TdObject {
  const Birthdate({
    required this.day,
    required this.month,
    required this.year,
  });

  /// [day] Day of the month; 1-31
  final int day;

  /// [month] Month of the year; 1-12
  final int month;

  /// [year] Birth year; 0 if unknown
  final int year;

  static const String constructor = 'birthdate';

  static Birthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Birthdate(
      day: json['day'] as int,
      month: json['month'] as int,
      year: json['year'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'day': day,
        'month': month,
        'year': year,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Birthdate &&
          const DeepCollectionEquality().equals(other.day, day) &&
          const DeepCollectionEquality().equals(other.month, month) &&
          const DeepCollectionEquality().equals(other.year, year));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(day),
        const DeepCollectionEquality().hash(month),
        const DeepCollectionEquality().hash(year)
      ]);
}
