// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of supported time zones
/// Returns [TimeZones]
@immutable
class GetTimeZones extends TdFunction {
  const GetTimeZones();

  static const String constructor = 'getTimeZones';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetTimeZones);

  @override
  int get hashCode => runtimeType.hashCode;
}
