// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Converts a JsonValue object to corresponding JSON-serialized string. Can
/// be called synchronously
/// Returns [Text]
@immutable
class GetJsonString extends TdFunction {
  const GetJsonString({
    required this.jsonValue,
  });

  /// [jsonValue] The JsonValue object
  final JsonValue jsonValue;

  static const String constructor = 'getJsonString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'json_value': jsonValue.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetJsonString &&
          const DeepCollectionEquality().equals(other.jsonValue, jsonValue));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(jsonValue)]);
}
