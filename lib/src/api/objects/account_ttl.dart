// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about the period of inactivity after which the
/// current user's account will automatically be deleted
@immutable
class AccountTtl extends TdObject {
  const AccountTtl({
    required this.days,
  });

  /// [days] Number of days of inactivity before the account will be flagged for
  /// deletion; 30-730 days
  final int days;

  static const String constructor = 'accountTtl';

  static AccountTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccountTtl(
      days: (json['days'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'days': days,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AccountTtl &&
          const DeepCollectionEquality().equals(other.days, days));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(days)]);
}
