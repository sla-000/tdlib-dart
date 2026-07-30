import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A location
@immutable
class InputPollMediaLocation extends InputPollMedia {
  const InputPollMediaLocation({
    required this.location,
  });

  /// [location] Location to be sent
  final Location location;

  static const String constructor = 'inputPollMediaLocation';

  static InputPollMediaLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaLocation(
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
