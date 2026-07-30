// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple object containing a number; for testing only
@immutable
class TestInt extends TdObject {
  const TestInt({
    required this.value,
  });

  /// [value] Number
  final int value;

  static const String constructor = 'testInt';

  static TestInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestInt(
      value: (json['value'] as int?) ?? 0,
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
          other is TestInt &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
