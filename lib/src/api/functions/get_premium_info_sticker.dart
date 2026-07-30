// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the sticker to be used as representation of the Telegram Premium
/// subscription
/// Returns [Sticker]
@immutable
class GetPremiumInfoSticker extends TdFunction {
  const GetPremiumInfoSticker({
    required this.monthCount,
  });

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  static const String constructor = 'getPremiumInfoSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetPremiumInfoSticker &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(monthCount)]);
}
