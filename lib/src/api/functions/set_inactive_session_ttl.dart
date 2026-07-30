// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the period of inactivity after which sessions will automatically
/// be terminated
/// Returns [Ok]
@immutable
class SetInactiveSessionTtl extends TdFunction {
  const SetInactiveSessionTtl({
    required this.inactiveSessionTtlDays,
  });

  /// [inactiveSessionTtlDays] New number of days of inactivity before sessions
  /// will be automatically terminated; 1-366 days
  final int inactiveSessionTtlDays;

  static const String constructor = 'setInactiveSessionTtl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inactive_session_ttl_days': inactiveSessionTtlDays,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetInactiveSessionTtl &&
          const DeepCollectionEquality()
              .equals(other.inactiveSessionTtlDays, inactiveSessionTtlDays));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inactiveSessionTtlDays)
      ]);
}
