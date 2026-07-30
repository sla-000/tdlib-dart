// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A simple object containing a sequence of bytes; for testing only
@immutable
class TestBytes extends TdObject {
  const TestBytes({
    required this.value,
  });

  /// [value] Bytes
  final String value;

  static const String constructor = 'testBytes';

  static TestBytes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestBytes(
      value: (json['value'] as String?) ?? '',
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
          other is TestBytes &&
          const DeepCollectionEquality().equals(other.value, value));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(value)]);
}
