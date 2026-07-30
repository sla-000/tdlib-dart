import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
