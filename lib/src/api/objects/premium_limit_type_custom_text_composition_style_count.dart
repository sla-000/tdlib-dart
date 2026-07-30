import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of added text composition styles
@immutable
class PremiumLimitTypeCustomTextCompositionStyleCount extends PremiumLimitType {
  const PremiumLimitTypeCustomTextCompositionStyleCount();

  static const String constructor =
      'premiumLimitTypeCustomTextCompositionStyleCount';

  static PremiumLimitTypeCustomTextCompositionStyleCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCustomTextCompositionStyleCount();
  }

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
