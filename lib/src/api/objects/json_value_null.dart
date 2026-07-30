// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a null JSON value
@immutable
class JsonValueNull extends JsonValue {
  const JsonValueNull();

  static const String constructor = 'jsonValueNull';

  static JsonValueNull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const JsonValueNull();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is JsonValueNull);

  @override
  int get hashCode => runtimeType.hashCode;
}
