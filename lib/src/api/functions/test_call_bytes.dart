// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the received bytes; for testing only. This is an offline method.
/// Can be called before authorization
/// Returns [TestBytes]
@immutable
class TestCallBytes extends TdFunction {
  const TestCallBytes({
    required this.x,
  });

  /// [x] Bytes to return
  final String x;

  static const String constructor = 'testCallBytes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TestCallBytes &&
          const DeepCollectionEquality().equals(other.x, x));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(x)]);
}
