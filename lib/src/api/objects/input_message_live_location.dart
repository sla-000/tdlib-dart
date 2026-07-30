import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a live location
@immutable
class InputMessageLiveLocation extends InputMessageContent {
  const InputMessageLiveLocation({
    required this.location,
  });

  /// [location] Initial state of the live location to be sent. Live period must
  /// be equal to 0x7FFFFFFF for permanent live locations, or between 60 and
  /// 86400
  final LiveLocation location;

  static const String constructor = 'inputMessageLiveLocation';

  static InputMessageLiveLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageLiveLocation(
      location:
          LiveLocation.fromJson(json['location'] as Map<String, dynamic>?)!,
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
