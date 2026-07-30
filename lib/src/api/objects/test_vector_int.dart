// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple object containing a vector of numbers; for testing only
@immutable
class TestVectorInt extends TdObject {
  const TestVectorInt({
    required this.value,
  });

  /// [value] Vector of numbers
  final List<int> value;

  static const String constructor = 'testVectorInt';

  static TestVectorInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorInt(
      value: List<int>.from(((json['value'] as List<dynamic>?) ?? <dynamic>[])
          .map((item) =>
              (item is int ? item : int.tryParse(item.toString()) ?? 0))
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
          other is TestVectorInt &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
