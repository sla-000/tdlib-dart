// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns database statistics
/// Returns [DatabaseStatistics]
@immutable
class GetDatabaseStatistics extends TdFunction {
  const GetDatabaseStatistics();

  static const String constructor = 'getDatabaseStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetDatabaseStatistics);

  @override
  int get hashCode => runtimeType.hashCode;
}
