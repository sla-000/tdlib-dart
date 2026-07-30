// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the received vector of numbers; for testing only. This is an
/// offline method. Can be called before authorization
/// Returns [TestVectorInt]
@immutable
class TestCallVectorInt extends TdFunction {
  const TestCallVectorInt({
    required this.x,
  });

  /// [x] Vector of numbers to return
  final List<int> x;

  static const String constructor = 'testCallVectorInt';

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
          other is TestCallVectorInt &&
          const DeepCollectionEquality().equals(other.x, x));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(x)]);
}
