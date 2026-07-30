// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the received vector of objects containing a string; for testing
/// only. This is an offline method. Can be called before authorization
/// Returns [TestVectorStringObject]
@immutable
class TestCallVectorStringObject extends TdFunction {
  const TestCallVectorStringObject({
    required this.x,
  });

  /// [x] Vector of objects to return
  final List<TestString> x;

  static const String constructor = 'testCallVectorStringObject';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestCallVectorStringObject &&
          const DeepCollectionEquality().equals(other.x, x));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(x)]);
}
