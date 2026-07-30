// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Forces an updates.getDifference call to the Telegram servers; for testing
/// only
/// Returns [Ok]
@immutable
class TestGetDifference extends TdFunction {
  const TestGetDifference();

  static const String constructor = 'testGetDifference';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is TestGetDifference);

  @override
  int get hashCode => runtimeType.hashCode;
}
