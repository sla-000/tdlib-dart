// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Allows the specified user to send unpaid private messages to the current
/// user by adding a rule to userPrivacySettingAllowUnpaidMessages
/// Returns [Ok]
@immutable
class AllowUnpaidMessagesFromUser extends TdFunction {
  const AllowUnpaidMessagesFromUser({
    required this.userId,
    required this.refundPayments,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [refundPayments] Pass true to refund the user previously paid messages
  final bool refundPayments;

  static const String constructor = 'allowUnpaidMessagesFromUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'refund_payments': refundPayments,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AllowUnpaidMessagesFromUser &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.refundPayments, refundPayments));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(refundPayments)
      ]);
}
