// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the received vector of strings; for testing only. This is an
/// offline method. Can be called before authorization
/// Returns [TestVectorString]
@immutable
class TestCallVectorString extends TdFunction {
  const TestCallVectorString({
    required this.x,
  });

  /// [x] Vector of strings to return
  final List<String> x;

  static const String constructor = 'testCallVectorString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestCallVectorString &&
          const DeepCollectionEquality().equals(other.x, x));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(x)]);
}
