// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current user
/// Returns [User]
@immutable
class GetMe extends TdFunction {
  const GetMe();

  static const String constructor = 'getMe';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetMe);

  @override
  int get hashCode => runtimeType.hashCode;
}
