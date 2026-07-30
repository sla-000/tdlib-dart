import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes reason for refund of the payment for a suggested post
@immutable
abstract class SuggestedPostRefundReason extends TdObject {
  const SuggestedPostRefundReason();

  static const String constructor = 'suggestedPostRefundReason';

  /// Inherited by:
  /// [SuggestedPostRefundReasonPaymentRefunded]
  /// [SuggestedPostRefundReasonPostDeleted]
  static SuggestedPostRefundReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostRefundReasonPaymentRefunded.constructor:
        return SuggestedPostRefundReasonPaymentRefunded.fromJson(json);
      case SuggestedPostRefundReasonPostDeleted.constructor:
        return SuggestedPostRefundReasonPostDeleted.fromJson(json);
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
