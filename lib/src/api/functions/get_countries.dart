// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about existing countries. Can be called before
/// authorization
/// Returns [Countries]
@immutable
class GetCountries extends TdFunction {
  const GetCountries();

  static const String constructor = 'getCountries';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetCountries);

  @override
  int get hashCode => runtimeType.hashCode;
}
