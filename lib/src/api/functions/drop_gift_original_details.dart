import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Drops original details for an upgraded gift
/// Returns [Ok]
@immutable
class DropGiftOriginalDetails extends TdFunction {
  const DropGiftOriginalDetails({
    required this.receivedGiftId,
    required this.starCount,
  });

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [starCount] The Telegram Star amount required to pay for the operation
  final int starCount;

  static const String constructor = 'dropGiftOriginalDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
