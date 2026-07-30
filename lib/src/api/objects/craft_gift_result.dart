import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains result of gift crafting
@immutable
abstract class CraftGiftResult extends TdObject {
  const CraftGiftResult();

  static const String constructor = 'craftGiftResult';

  /// Inherited by:
  /// [CraftGiftResultFail]
  /// [CraftGiftResultInvalidGift]
  /// [CraftGiftResultSuccess]
  /// [CraftGiftResultTooEarly]
  static CraftGiftResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CraftGiftResultFail.constructor:
        return CraftGiftResultFail.fromJson(json);
      case CraftGiftResultInvalidGift.constructor:
        return CraftGiftResultInvalidGift.fromJson(json);
      case CraftGiftResultSuccess.constructor:
        return CraftGiftResultSuccess.fromJson(json);
      case CraftGiftResultTooEarly.constructor:
        return CraftGiftResultTooEarly.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
