import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes earnings from a published suggested post
@immutable
class ChatRevenueTransactionTypeSuggestedPostEarnings
    extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeSuggestedPostEarnings({
    required this.userId,
  });

  /// [userId] Identifier of the user who paid for the suggested post
  final int userId;

  static const String constructor =
      'chatRevenueTransactionTypeSuggestedPostEarnings';

  static ChatRevenueTransactionTypeSuggestedPostEarnings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeSuggestedPostEarnings(
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
