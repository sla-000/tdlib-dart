// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Does nothing and ensures that the Update object is used; for testing only.
/// This is an offline method. Can be called before authorization
/// Returns [Update]
@immutable
class TestUseUpdate extends TdFunction {
  const TestUseUpdate();

  static const String constructor = 'testUseUpdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is TestUseUpdate);

  @override
  int get hashCode => runtimeType.hashCode;
}
