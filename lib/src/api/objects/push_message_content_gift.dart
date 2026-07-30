import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a gift
@immutable
class PushMessageContentGift extends PushMessageContent {
  const PushMessageContentGift({
    required this.starCount,
    required this.isPrepaidUpgrade,
  });

  /// [starCount] Number of Telegram Stars that sender paid for the gift
  final int starCount;

  /// [isPrepaidUpgrade] True, if the message is about prepaid upgrade of the
  /// gift by another user instead of actual receiving of a new gift
  final bool isPrepaidUpgrade;

  static const String constructor = 'pushMessageContentGift';

  static PushMessageContentGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGift(
      starCount: json['star_count'] as int,
      isPrepaidUpgrade: json['is_prepaid_upgrade'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'is_prepaid_upgrade': isPrepaidUpgrade,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
