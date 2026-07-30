// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a value representing a number of seconds
@immutable
class Seconds extends TdObject {
  const Seconds({
    required this.seconds,
  });

  /// [seconds] Number of seconds
  final double seconds;

  static const String constructor = 'seconds';

  static Seconds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Seconds(
      seconds: (json['seconds'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'seconds': seconds,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Seconds &&
          const DeepCollectionEquality().equals(other.seconds, seconds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(seconds)]);
}
