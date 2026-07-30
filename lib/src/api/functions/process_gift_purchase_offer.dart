import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Handles a pending gift purchase offer
/// Returns [Ok]
@immutable
class ProcessGiftPurchaseOffer extends TdFunction {
  const ProcessGiftPurchaseOffer({
    required this.messageId,
    required this.accept,
  });

  /// [messageId] Identifier of the message with the gift purchase offer
  final int messageId;

  /// [accept] Pass true to accept the request; pass false to reject it
  final bool accept;

  static const String constructor = 'processGiftPurchaseOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'accept': accept,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
