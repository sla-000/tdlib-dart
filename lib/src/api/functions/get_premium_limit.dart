// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a limit, increased for Premium users. Returns a
/// 404 error if the limit is unknown
/// Returns [PremiumLimit]
@immutable
class GetPremiumLimit extends TdFunction {
  const GetPremiumLimit({
    required this.limitType,
  });

  /// [limitType] Type of the limit
  final PremiumLimitType limitType;

  static const String constructor = 'getPremiumLimit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'limit_type': limitType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPremiumLimit &&
          const DeepCollectionEquality().equals(other.limitType, limitType));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(limitType)]);
}
