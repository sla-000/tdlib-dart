// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumLimitTypeCustomTextCompositionStyleCount);

  @override
  int get hashCode => runtimeType.hashCode;
}
