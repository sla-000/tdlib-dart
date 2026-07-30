// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a Telegram Premium gift code created for the user
@immutable
class PushMessageContentPremiumGiftCode extends PushMessageContent {
  const PushMessageContentPremiumGiftCode({
    required this.monthCount,
  });

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  static const String constructor = 'pushMessageContentPremiumGiftCode';

  static PushMessageContentPremiumGiftCode? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPremiumGiftCode(
      monthCount: (json['month_count'] as int?) ?? 0,
    );
  }

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
          other is PushMessageContentPremiumGiftCode &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(monthCount)]);
}
