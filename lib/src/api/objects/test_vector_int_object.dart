// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple object containing a vector of objects that hold a number; for
/// testing only
@immutable
class TestVectorIntObject extends TdObject {
  const TestVectorIntObject({
    required this.value,
  });

  /// [value] Vector of objects
  final List<TestInt> value;

  static const String constructor = 'testVectorIntObject';

  static TestVectorIntObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorIntObject(
      value: List<TestInt>.from(
          ((json['value'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => TestInt.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestVectorIntObject &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
