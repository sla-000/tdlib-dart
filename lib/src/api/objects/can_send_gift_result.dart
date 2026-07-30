import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes whether a gift can be sent now by the current user
@immutable
abstract class CanSendGiftResult extends TdObject {
  const CanSendGiftResult();

  static const String constructor = 'canSendGiftResult';

  /// Inherited by:
  /// [CanSendGiftResultFail]
  /// [CanSendGiftResultOk]
  static CanSendGiftResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanSendGiftResultFail.constructor:
        return CanSendGiftResultFail.fromJson(json);
      case CanSendGiftResultOk.constructor:
        return CanSendGiftResultOk.fromJson(json);
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
