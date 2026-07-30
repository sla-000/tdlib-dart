// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the period of inactivity after which the account of the current
/// user will automatically be deleted
/// Returns [Ok]
@immutable
class SetAccountTtl extends TdFunction {
  const SetAccountTtl({
    required this.ttl,
  });

  /// [ttl] New account TTL
  final AccountTtl ttl;

  static const String constructor = 'setAccountTtl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ttl': ttl.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAccountTtl &&
          const DeepCollectionEquality().equals(other.ttl, ttl));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(ttl)]);
}
