// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The maximum number of joined supergroups and channels
@immutable
class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  const PremiumLimitTypeSupergroupCount();

  static const String constructor = 'premiumLimitTypeSupergroupCount';

  static PremiumLimitTypeSupergroupCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSupergroupCount();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumLimitTypeSupergroupCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
