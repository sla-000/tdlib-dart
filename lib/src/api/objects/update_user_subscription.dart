import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Subscription of a user to the bot was changed; for bots only
@immutable
class UpdateUserSubscription extends Update {
  const UpdateUserSubscription({
    required this.userId,
    required this.payload,
    required this.isCanceled,
    required this.isRestored,
    required this.isPaymentFailed,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [payload] Bot-specified subscription invoice payload
  final String payload;

  /// [isCanceled] True, if the subscription was canceled
  final bool isCanceled;

  /// [isRestored] True, if the subscription was restored
  final bool isRestored;

  /// [isPaymentFailed] True, if the payment for the subscription has failed
  final bool isPaymentFailed;

  static const String constructor = 'updateUserSubscription';

  static UpdateUserSubscription? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserSubscription(
      userId: json['user_id'] as int,
      payload: json['payload'] as String,
      isCanceled: json['is_canceled'] as bool,
      isRestored: json['is_restored'] as bool,
      isPaymentFailed: json['is_payment_failed'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'payload': payload,
        'is_canceled': isCanceled,
        'is_restored': isRestored,
        'is_payment_failed': isPaymentFailed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
