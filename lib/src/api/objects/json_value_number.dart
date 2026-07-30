// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a numeric JSON value
@immutable
class JsonValueNumber extends JsonValue {
  const JsonValueNumber({
    required this.value,
  });

  /// [value] The value
  final double value;

  static const String constructor = 'jsonValueNumber';

  static JsonValueNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueNumber(
      value: (json['value'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is JsonValueNumber &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
