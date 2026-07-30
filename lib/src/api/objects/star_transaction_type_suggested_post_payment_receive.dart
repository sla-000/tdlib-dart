import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a receiving of a payment for a suggested post by the
/// channel chat; relevant for channel chats only
@immutable
class StarTransactionTypeSuggestedPostPaymentReceive
    extends StarTransactionType {
  const StarTransactionTypeSuggestedPostPaymentReceive({
    required this.userId,
  });

  /// [userId] Identifier of the user who paid for the suggested post
  final int userId;

  static const String constructor =
      'starTransactionTypeSuggestedPostPaymentReceive';

  static StarTransactionTypeSuggestedPostPaymentReceive? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeSuggestedPostPaymentReceive(
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
