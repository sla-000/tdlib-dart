// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of paid media from a bot or a business
/// account by the current user; relevant for regular users only
@immutable
class StarTransactionTypeBotPaidMediaPurchase extends StarTransactionType {
  const StarTransactionTypeBotPaidMediaPurchase({
    required this.userId,
    required this.media,
  });

  /// [userId] Identifier of the bot or the business account user who sent the
  /// paid media
  final int userId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor = 'starTransactionTypeBotPaidMediaPurchase';

  static StarTransactionTypeBotPaidMediaPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotPaidMediaPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      media: List<PaidMedia>.from(
          ((json['media'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PaidMedia.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'media': media.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeBotPaidMediaPurchase &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.media, media));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(media)
      ]);
}
