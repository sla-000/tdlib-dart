// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Quickly returns approximate storage usage statistics. Can be called before
/// authorization
/// Returns [StorageStatisticsFast]
@immutable
class GetStorageStatisticsFast extends TdFunction {
  const GetStorageStatisticsFast();

  static const String constructor = 'getStorageStatisticsFast';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetStorageStatisticsFast);

  @override
  int get hashCode => runtimeType.hashCode;
}
