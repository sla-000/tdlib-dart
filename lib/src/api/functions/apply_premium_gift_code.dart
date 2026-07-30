// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Applies a Telegram Premium gift code
/// Returns [Ok]
@immutable
class ApplyPremiumGiftCode extends TdFunction {
  const ApplyPremiumGiftCode({
    required this.code,
  });

  /// [code] The code to apply
  final String code;

  static const String constructor = 'applyPremiumGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ApplyPremiumGiftCode &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(code)]);
}
