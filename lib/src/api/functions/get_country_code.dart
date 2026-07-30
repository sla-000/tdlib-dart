// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Uses the current IP address to find the current country. Returns
/// two-letter ISO 3166-1 alpha-2 country code. Can be called before
/// authorization
/// Returns [Text]
@immutable
class GetCountryCode extends TdFunction {
  const GetCountryCode();

  static const String constructor = 'getCountryCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetCountryCode);

  @override
  int get hashCode => runtimeType.hashCode;
}
