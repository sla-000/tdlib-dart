// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the period of inactivity after which the account of the current
/// user will automatically be deleted
/// Returns [AccountTtl]
@immutable
class GetAccountTtl extends TdFunction {
  const GetAccountTtl();

  static const String constructor = 'getAccountTtl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetAccountTtl);

  @override
  int get hashCode => runtimeType.hashCode;
}
