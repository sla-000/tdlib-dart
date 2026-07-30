// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Converts a JSON-serialized string to corresponding JsonValue object. Can
/// be called synchronously
/// Returns [JsonValue]
@immutable
class GetJsonValue extends TdFunction {
  const GetJsonValue({
    required this.json,
  });

  /// [json] The JSON-serialized string
  final String json;

  static const String constructor = 'getJsonValue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'json': json,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetJsonValue &&
          const DeepCollectionEquality().equals(other.json, json));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(json)]);
}
