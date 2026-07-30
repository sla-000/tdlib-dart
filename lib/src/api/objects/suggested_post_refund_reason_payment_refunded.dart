// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The post was refunded, because the payment for the post was refunded
@immutable
class SuggestedPostRefundReasonPaymentRefunded
    extends SuggestedPostRefundReason {
  const SuggestedPostRefundReasonPaymentRefunded();

  static const String constructor = 'suggestedPostRefundReasonPaymentRefunded';

  static SuggestedPostRefundReasonPaymentRefunded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostRefundReasonPaymentRefunded();
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
          other is SuggestedPostRefundReasonPaymentRefunded);

  @override
  int get hashCode => runtimeType.hashCode;
}
