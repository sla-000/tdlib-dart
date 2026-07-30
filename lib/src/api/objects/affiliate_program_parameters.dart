// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes parameters of an affiliate program
@immutable
class AffiliateProgramParameters extends TdObject {
  const AffiliateProgramParameters({
    required this.commissionPerMille,
    required this.monthCount,
  });

  /// [commissionPerMille] The number of Telegram Stars received by the
  /// affiliate for each 1000 Telegram Stars received by the program owner;
  /// getOption("affiliate_program_commission_per_mille_min")-getOption("affiliate_program_commission_per_mille_max")
  final int commissionPerMille;

  /// [monthCount] Number of months the program will be active; 0-36. If 0, then
  /// the program is eternal
  final int monthCount;

  static const String constructor = 'affiliateProgramParameters';

  static AffiliateProgramParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateProgramParameters(
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'commission_per_mille': commissionPerMille,
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AffiliateProgramParameters &&
          const DeepCollectionEquality()
              .equals(other.commissionPerMille, commissionPerMille) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(commissionPerMille),
        const DeepCollectionEquality().hash(monthCount)
      ]);
}
