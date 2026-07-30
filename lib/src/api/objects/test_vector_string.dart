// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple object containing a vector of strings; for testing only
@immutable
class TestVectorString extends TdObject {
  const TestVectorString({
    required this.value,
  });

  /// [value] Vector of strings
  final List<String> value;

  static const String constructor = 'testVectorString';

  static TestVectorString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorString(
      value: List<String>.from(
          ((json['value'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestVectorString &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
