import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a gift auction was closed by the user
/// Returns [Ok]
@immutable
class CloseGiftAuction extends TdFunction {
  const CloseGiftAuction({
    required this.giftId,
  });

  /// [giftId] Identifier of the gift, which auction was closed
  final int giftId;

  static const String constructor = 'closeGiftAuction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
