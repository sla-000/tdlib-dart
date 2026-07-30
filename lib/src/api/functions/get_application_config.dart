// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns application config, provided by the server. Can be called before
/// authorization
/// Returns [JsonValue]
@immutable
class GetApplicationConfig extends TdFunction {
  const GetApplicationConfig();

  static const String constructor = 'getApplicationConfig';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetApplicationConfig);

  @override
  int get hashCode => runtimeType.hashCode;
}
