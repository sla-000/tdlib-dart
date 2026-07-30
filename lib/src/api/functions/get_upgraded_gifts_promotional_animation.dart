// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns promotional animation for upgraded gifts
/// Returns [Animation]
@immutable
class GetUpgradedGiftsPromotionalAnimation extends TdFunction {
  const GetUpgradedGiftsPromotionalAnimation();

  static const String constructor = 'getUpgradedGiftsPromotionalAnimation';

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
          other is GetUpgradedGiftsPromotionalAnimation);

  @override
  int get hashCode => runtimeType.hashCode;
}
