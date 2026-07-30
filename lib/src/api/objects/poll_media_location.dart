import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A location
@immutable
class PollMediaLocation extends PollMedia {
  const PollMediaLocation({
    required this.location,
  });

  /// [location] The location
  final Location location;

  static const String constructor = 'pollMediaLocation';

  static PollMediaLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
