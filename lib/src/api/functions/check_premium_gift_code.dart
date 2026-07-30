// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a Telegram Premium gift code
/// Returns [PremiumGiftCodeInfo]
@immutable
class CheckPremiumGiftCode extends TdFunction {
  const CheckPremiumGiftCode({
    required this.code,
  });

  /// [code] The code to check
  final String code;

  static const String constructor = 'checkPremiumGiftCode';

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
          other is CheckPremiumGiftCode &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(code)]);
}
