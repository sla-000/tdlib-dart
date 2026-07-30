// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple object containing a string; for testing only
@immutable
class TestString extends TdObject {
  const TestString({
    required this.value,
  });

  /// [value] String
  final String value;

  static const String constructor = 'testString';

  static TestString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestString(
      value: json['value'] as String,
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
          other is TestString &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
